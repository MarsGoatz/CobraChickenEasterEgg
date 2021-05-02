import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:react_van/state/app_state.dart';

class SettingsTab extends StatefulWidget {
  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    final _appState = Provider.of<AppState>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Observer(
          builder: (_) => Column(
            children: _appState.options
                .map(
                  (element) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          element,
                          style: TextStyle(fontSize: 20),
                        ),
                        Switch(
                          value: _appState.option == element,
                          onChanged: (value) {
                            _appState.setOption(element);
                          },
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Observer(
          builder: (_) => Column(
            children: [
              if (_appState.cobraChickenRevealTaps < 10 &&
                  _appState.cobraChickenRevealTaps > 5)
                Text(_appState.cobraChickenRevealTaps.toString()),
              GestureDetector(
                onTap: () {
                  if (_appState.cobraChickenRevealTaps <= 10) {
                    _appState.incrementCobraChickenRevealTaps();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Build Number: 1.0.0+1'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () => _appState.reset(),
                  child: Text(
                    'RESET',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}
