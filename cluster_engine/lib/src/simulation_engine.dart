import 'package:cluster_engine/src/engine/clock_runner.dart';
import 'package:cluster_engine/src/engine/entities/tick.dart';

class SimulationEngine {
  late final ClockRunner _clockRunner;
  int _currentTick = 0;

  SimulationEngine() {
    _clockRunner = ClockRunner(
      timeInterval: const Duration(seconds: 1),
      onTickCallback: _onClockTick,
    );
  }

  void start() {
    _clockRunner.start();
  }

  void pause() {
    _clockRunner.pause();
  }

  void stop() {
    _clockRunner.stop();
    _currentTick = 0;
  }

  void _onClockTick() {
    tick();
  }

  void tick() {
    _currentTick++;
    print('Tick $_currentTick');
    
    final currentTickEntity = Tick(_currentTick.toString());
    currentTickEntity.executeTick();
  }
}