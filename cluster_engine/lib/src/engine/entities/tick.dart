
import 'package:uuid/uuid.dart';

/// Base time unit representation, contains one method that happens during the running of the Tick
class Tick{
  /// Tick identifier
  final id = Uuid().v4();

  /// Action method, can be null in case the tick does not have nothing scheduled
  void Function() action;

}