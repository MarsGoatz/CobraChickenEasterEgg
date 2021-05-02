import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:react_van/screens/home.dart';
import 'package:react_van/screens/options_page.dart';
import 'package:react_van/state/app_state.dart';
import 'package:provider/provider.dart';

class Startup extends StatefulWidget {
  @override
  _StartupState createState() => _StartupState();
}

class _StartupState extends State<Startup> {
  @override
  Widget build(BuildContext context) {
    final _appState = Provider.of<AppState>(context);
    return Observer(
        builder: (_) => _appState.initialized ? HomePage() : OptionsPage());
  }
}
