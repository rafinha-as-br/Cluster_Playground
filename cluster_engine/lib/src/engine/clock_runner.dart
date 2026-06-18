
import 'package:cluster_engine/src/engine/entities/tick.dart';

/// Responsible for running the ticks inside a [Tick] list using a specific time interval
class ClockRunner{

  /// Tickets list to do the running
  final List<Tick> tickets;
  /// Time interval value
  final Duration _timeInterval = Duration(seconds: 2);

  ClockRunner({required this.tickets});

  /// future start looper

  /// future stop looper

  /// Looper - For each looper that every element it waits the seconds
  Future<void> looper() async{
    for(var ticket in tickets){
      await Future.delayed(_timeInterval);
      await ticket.executeTick();
    }

  }


}