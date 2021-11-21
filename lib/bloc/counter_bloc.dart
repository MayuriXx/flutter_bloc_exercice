import 'dart:async';
import 'bloc.dart';

class CounterBloc extends Bloc {
  int counter = 0;

  CounterBloc() {
    sink.add(counter);
  }

  //Stream Controller
  final _streamController = StreamController<int>();

  //INPUT
  Sink<int> get sink => _streamController.sink;

  //END
  Stream<int> get stream => _streamController.stream;

  //BUSINESS LOGIC
  incrementCounter() {
    counter += 1;
    sink.add(counter);
  }

  //CLOSE BLOC
  @override
  dispose() => _streamController.close();
}
