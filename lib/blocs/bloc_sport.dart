import 'dart:async';

import 'package:flutter_bloc_exercice/data/model/sport.dart';
import 'package:flutter_bloc_exercice/data/services/sport_db_api.dart';

import 'bloc.dart';

class BlocSport extends Bloc {
  final _streamController = StreamController<List<Sport>>();

  Stream<List<Sport>> get stream => _streamController.stream;
  Sink<List<Sport>> get sink => _streamController.sink;

  fetchSports() async {
    final sports = await SportDBApi().fetchSports();
    sink.add(sports);
  }

  @override
  dispose() {
    _streamController.close();
  }
}
