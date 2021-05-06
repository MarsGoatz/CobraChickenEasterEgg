import 'package:flutter/material.dart';
import 'package:react_van/screens/home/settings_tab.dart';
import 'package:gesture_x_detector/gesture_x_detector.dart';

import 'home_tab.dart';

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
            icon: XGestureDetector(
                onLongPress: (tap) =>
                    _showThankYouReactVanAlertiDialog(context),
                longPressTimeConsider: 3500,
                child: Icon(Icons.home)),
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

  Future _showThankYouReactVanAlertiDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'FLUTTER VANCOUVER',
          style: TextStyle(fontSize: 30),
        ),
        content: Text(
          'Really glad to see you here!',
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
