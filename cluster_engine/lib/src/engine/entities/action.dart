
import 'package:cluster_engine/src/engine/entities/result.dart';

/// Represents one single activity to be completed
abstract class Action{

  /// The main action method
  Future<Result> execution();
}

/// Default action for first working elements
class DefaultAction implements Action {
  final Future<Result> Function() _execution;

  DefaultAction({
    required Future<Result> Function() execution,
  }) : _execution = execution;

  @override
  Future<Result> execution() {
    return _execution();
  }
}

