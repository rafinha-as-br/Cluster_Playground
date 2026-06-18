import 'package:cluster_engine/cluster_engine.dart';
import 'dart:io';

void main() async {
  final engine = SimulationEngine();

  print('Starting Simulation Engine (Phase 1)...');
  engine.start();

  // Run for 5 seconds and then stop to demonstrate it works
  await Future.delayed(Duration(seconds: 5));
  
  engine.stop();
  print('Simulation Engine stopped.');
  exit(0);
}
