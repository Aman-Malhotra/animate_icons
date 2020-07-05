import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AnimateIconController controller;
  @override
  void initState() {
    controller = AnimateIconController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimateIcons(
                startIcon: Icons.bluetooth,
                endIcon: Icons.bluetooth_disabled,
                size: 60.0,
                controller: controller,
                onEndIconPress: () {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text("onEndIconPress called"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                  return true;
                },
                onStartIconPress: () {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text("onStartIconPress called"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                  return true;
                },
                duration: Duration(milliseconds: 600),
                clockwise: true,
                color: Colors.deepPurple,
              ),
              IconButton(
                iconSize: 50.0,
                icon: Icon(
                  Icons.play_arrow,
                ),
                onPressed: () {
                  if (controller.isStart()) {
                    controller.animateToEnd();
                  } else if (controller.isEnd()) {
                    controller.animateToStart();
                  }
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text("Animate using controller, onPress not called"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}
