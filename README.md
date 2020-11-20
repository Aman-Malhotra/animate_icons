## Animate Any two icons with this plugin

### Demo:

<img src="https://raw.githubusercontent.com/Aman-Malhotra/AnimateIconsFlutter/main/demo/AnimateIconsDemo.gif"  height="450" />

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
            return true;
        },
        onEndIconPress: () {
            print("Clicked on Close Icon");
            return true;
        },
        duration: Duration(milliseconds: 500),
        color: Theme.of(context).primaryColor,
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
    color: Theme.of(context).primaryColor,
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

