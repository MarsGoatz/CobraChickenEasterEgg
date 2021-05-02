import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:react_van/state/app_state.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final _appState = Provider.of<AppState>(context);
    return Observer(
      builder: (_) => Center(
        child: Image.asset(
          optionToImageMap[_appState.option],
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
