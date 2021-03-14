import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AnimateIconController c1, c2, c3, c4, c5, c6;
  @override
  void initState() {
    c1 = AnimateIconController();
    c2 = AnimateIconController();
    c3 = AnimateIconController();
    c4 = AnimateIconController();
    c5 = AnimateIconController();
    c6 = AnimateIconController();
    super.initState();
  }

  bool onEndIconPress(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("onEndIconPress called"),
        duration: Duration(seconds: 1),
      ),
    );
    return true;
  }

  bool onStartIconPress(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("onStartIconPress called"),
        duration: Duration(seconds: 1),
      ),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                children: [
                  AnimateIcons(
                    startIcon: Icons.add_circle,
                    endIcon: Icons.add_circle_outline,
                    controller: c1,
                    size: 45.0,
                    onEndIconPress: () => onEndIconPress(context),
                    onStartIconPress: () => onStartIconPress(context),
                  ),
                  AnimateIcons(
                    startIcon: Icons.star,
                    endIcon: Icons.star_border,
                    controller: c2,
                    size: 45.0,
                    onEndIconPress: () => onEndIconPress(context),
                    onStartIconPress: () => onStartIconPress(context),
                  ),
                  AnimateIcons(
                    startIcon: Icons.calculate,
                    endIcon: Icons.calculate_outlined,
                    controller: c3,
                    size: 45.0,
                    onEndIconPress: () => onEndIconPress(context),
                    onStartIconPress: () => onStartIconPress(context),
                  ),
                  AnimateIcons(
                    startIcon: Icons.dashboard,
                    endIcon: Icons.dashboard_outlined,
                    controller: c4,
                    size: 45.0,
                    onEndIconPress: () => onEndIconPress(context),
                    onStartIconPress: () => onStartIconPress(context),
                  ),
                  AnimateIcons(
                    startIcon: Icons.handyman,
                    endIcon: Icons.handyman_outlined,
                    controller: c5,
                    size: 45.0,
                    onEndIconPress: () => onEndIconPress(context),
                    onStartIconPress: () => onStartIconPress(context),
                  ),
                  AnimateIcons(
                    startIcon: Icons.terrain_rounded,
                    endIcon: Icons.terrain_outlined,
                    controller: c6,
                    size: 45.0,
                    onEndIconPress: () => onEndIconPress(context),
                    onStartIconPress: () => onStartIconPress(context),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              AnimateIcons(
                startIcon: Icons.play_arrow,
                endIcon: Icons.play_arrow_outlined,
                size: 45.0,
                controller: AnimateIconController(),
                onEndIconPress: () {
                  if (c1.isStart()) {
                    c1.animateToEnd();
                  } else if (c1.isEnd()) {
                    c1.animateToStart();
                  }
                  if (c2.isStart()) {
                    c2.animateToEnd();
                  } else if (c2.isEnd()) {
                    c2.animateToStart();
                  }
                  if (c3.isStart()) {
                    c3.animateToEnd();
                  } else if (c3.isEnd()) {
                    c3.animateToStart();
                  }
                  if (c4.isStart()) {
                    c4.animateToEnd();
                  } else if (c4.isEnd()) {
                    c4.animateToStart();
                  }
                  if (c5.isStart()) {
                    c5.animateToEnd();
                  } else if (c5.isEnd()) {
                    c5.animateToStart();
                  }
                  if (c6.isStart()) {
                    c6.animateToEnd();
                  } else if (c6.isEnd()) {
                    c6.animateToStart();
                  }
                  return true;
                },
                onStartIconPress: () {
                  if (c1.isStart()) {
                    c1.animateToEnd();
                  } else if (c1.isEnd()) {
                    c1.animateToStart();
                  }
                  if (c2.isStart()) {
                    c2.animateToEnd();
                  } else if (c2.isEnd()) {
                    c2.animateToStart();
                  }
                  if (c3.isStart()) {
                    c3.animateToEnd();
                  } else if (c3.isEnd()) {
                    c3.animateToStart();
                  }
                  if (c4.isStart()) {
                    c4.animateToEnd();
                  } else if (c4.isEnd()) {
                    c4.animateToStart();
                  }
                  if (c5.isStart()) {
                    c5.animateToEnd();
                  } else if (c5.isEnd()) {
                    c5.animateToStart();
                  }
                  if (c6.isStart()) {
                    c6.animateToEnd();
                  } else if (c6.isEnd()) {
                    c6.animateToStart();
                  }
                  return true;
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}
