import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_exercice/blocs/bloc_provider.dart';
import 'package:flutter_bloc_exercice/blocs/bloc_sport.dart';
import 'package:flutter_bloc_exercice/data/services/sport_db_api.dart';
import 'package:flutter_bloc_exercice/ui/widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BlocSport>(context);
    return Scaffold(
      appBar: MyAppBar(
        titleAppBar: 'Home Page',
      ),
      body: const Center(
        child: Text('toto'),
      ),
    );
  }
}
