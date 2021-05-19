## Animate Any two icons with this plugin

### Demo:

<img src="https://raw.githubusercontent.com/Aman-Malhotra/animate_icons/main/demo/animate_icons.gif" height="200" />


### How to use:

All plugin in your pubspec.yaml 
    
> animate_icons:

Make the import:

> import 'package:animate_icons/animate_icons.dart';

Use the following widget:

    AnimateIcons(
        startIcon: Icons.add_circle,
        endIcon: Icons.add_circle_outline,
        size: 100.0,
        controller: controller,
        // add this tooltip for the start icon
        startTooltip: 'Icons.add_circle',
        // add this tooltip for the end icon
        endTooltip: 'Icons.add_circle_outline',
        size: 60.0,
        // add this for splashColor, default is Colors.transparent means no click effect
        splashColor: Colors.blueAccent.shade100.withAlpha(50),
        // default is Material.defaultSplashRadius (35)
        splashRadius: 24,
        onStartIconPress: () {
            print("Clicked on Add Icon");
            return true;
        },
        onEndIconPress: () {
            print("Clicked on Close Icon");
            return true;
        },
        duration: Duration(milliseconds: 500),
        startIconColor: Colors.deepPurple,
        endIconColor: Colors.deepOrange,
        clockwise: false,
    ),


# Use AnimateIconController
Define AnimateIconController to animate b/w start and end icons without onIco press, check which icon is there on top - start or end.

### Define AnimateIconController
    
> AnimateIconController controller;

### Initialize controller    
    
> controller = AnimateIconController();

### Pass controller to widget 
```
AnimateIcons(
    startIcon: Icons.add,
    endIcon: Icons.close,
    controller: controller,
    splashColor: Colors.blueAccent.shade100.withAlpha(50),
    splashRadius: 24,
    size: 60.0,
    onStartIconPress: () {
        print("Clicked on Add Icon");
        return true;
    },
    onEndIconPress: () {
        print("Clicked on Close Icon");
        return true;
    },
    duration: Duration(milliseconds: 500),
    startIconColor: Colors.deepPurple,
    endIconColor: Colors.deepOrange,
    clockwise: false,
),
```
### Use controller functions
``` 
if (controller.isStart()) {
    controller.animateToEnd();
} else if (controller.isEnd()) {
    controller.animateToStart();
}
```

