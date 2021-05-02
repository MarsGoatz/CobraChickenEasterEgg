import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:react_van/state/app_state.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        onTap: (itemIndex) {
          setState(() {
            _currentIndex = itemIndex;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Flutter Van ft. React Van'),
      ),
      body: _currentIndex == 0 ? HomeTab() : SettingsTab(),
    );
  }
}

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final _appState = Provider.of<AppState>(context);
    return Observer(
        builder: (_) => Image.asset(
              optionToImageMap[_appState.option],
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ));
  }
}

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
                .map((element) => Padding(
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
                              }),
                        ],
                      ),
                    ))
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
