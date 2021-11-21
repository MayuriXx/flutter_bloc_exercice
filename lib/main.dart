import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_exercice/bloc/counter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstBlocPage('My first bloc'),
    );
  }
}

class FirstBlocPage extends StatelessWidget {
  final String title;
  final CounterBloc counterBloc = CounterBloc();
  FirstBlocPage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: StreamBuilder(
        stream: counterBloc.stream,
        builder: (context, snapshot) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'You pressed this button :',
                  style: TextStyle(fontSize: 32),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '${snapshot.data}',
                  style: const TextStyle(fontSize: 32),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counterBloc.incrementCounter();
        },
      ),
    );
  }
}
