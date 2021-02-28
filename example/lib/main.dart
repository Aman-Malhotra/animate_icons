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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimateIcons(
                startIcon: Icons.add_circle,
                endIcon: Icons.add_circle_outline,
                size: 100.0,
                controller: controller,
                // add this tooltip for the start icon
                startTooltip: 'Icons.add_circle',
                // add this tooltip for the end icon
                endTooltip: 'Icons.add_circle_outline',
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
                startIconColor: Colors.deepPurple,
                endIconColor: Colors.yellow,
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
