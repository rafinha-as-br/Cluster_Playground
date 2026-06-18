
/// Represents a success or failure
abstract class Result<T>{
  final String resultLog;

  Result({required this.resultLog});
}

class Success implements Result<Success>{
  final String _resultLog;
  @override
  String get resultLog => _resultLog;

  Success(this._resultLog);

}

class Failure implements Result<Failure>{
  final String _resultLog;
  @override
  String get resultLog => _resultLog;

  Failure(this._resultLog);

}
