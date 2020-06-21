## Animate Any two icons with this plugin

### Demo:

![Demo 1](./examples/G1.gif) ![Demo 2](./examples/G2.gif) ![Demo 3](./examples/G3.gif) 

### How to use:

All plugin in your pubspec.yaml 
    
> animate_icons:

Make the import:

> import 'package:animate_icons/animate_icons.dart';

Use the following widget:

    AnimateIcons(
        startIcon: Icons.add,
        endIcon: Icons.close,
        size: 60.0,
        onStartIconPress: () {
            print("Clicked on Add Icon");
        },
        onEndIconPress: () {
            print("Clicked on Close Icon");
        },
        duration: Duration(milliseconds: 500),
        color: Theme.of(context).primaryColor,
        clockwise: false,
    ),


