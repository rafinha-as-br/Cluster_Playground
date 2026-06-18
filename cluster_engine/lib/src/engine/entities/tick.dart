
import 'package:cluster_engine/src/engine/entities/action.dart';
import 'package:uuid/uuid.dart';

/// Base time unit representation, contains a list of [Action] that gets executed during the running of the Tick
class Tick{
  /// Tick identifier
  final id = Uuid().v4();
  final String tickNumber;


  Tick(this.tickNumber);

  /// List of actions to be done in this tick
  List<Action> actions = [];

  /// Execute actions
  Future<void> executeTick() async{
    for (var a in actions) {
      await a.execution();
    }
  }

}