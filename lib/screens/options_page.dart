import 'package:flutter/material.dart';
import 'package:react_van/state/app_state.dart';
import 'package:provider/provider.dart';

class OptionsPage extends StatefulWidget {
  @override
  _OptionsPageState createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  @override
  Widget build(BuildContext context) {
    final _appState = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Van ft. React Van'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Choose Option:',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 50,
            ),
          ]..addAll(
              _appState.options
                  .map(
                    (e) => TextButton(
                      onPressed: () {
                        _appState.setOption(e);
                        _appState.setInitialized();
                      },
                      child: Column(
                        children: [
                          Text(
                            e,
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
        ),
      ),
    );
  }
}
