import 'dart:async';

/// Responsible for running the ticks inside a loop using a specific time interval
class ClockRunner {
  /// Time interval value
  final Duration timeInterval;
  
  /// Callback to be called on each tick
  final void Function() onTickCallback;
  
  Timer? _timer;
  bool _isRunning = false;

  ClockRunner({
    this.timeInterval = const Duration(seconds: 1),
    required this.onTickCallback,
  });

  void start() {
    if (_isRunning) return;
    _isRunning = true;
    _timer = Timer.periodic(timeInterval, (_) {
      onTickCallback();
    });
  }

  void pause() {
    _isRunning = false;
    _timer?.cancel();
  }

  void stop() {
    pause();
  }
}