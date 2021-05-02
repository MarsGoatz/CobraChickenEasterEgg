import 'package:flutter/material.dart';
import 'package:react_van/screens/startup.dart';
import 'package:provider/provider.dart';
import 'package:react_van/state/app_state.dart';

void main() {
  runApp(Provider<AppState>(create: (_) => AppState(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: Startup(),
    );
  }
}
