# neumorphic_container

Fully customisable `Neumorphic Containers` for your flutter projects.

<img src="https://raw.githubusercontent.com/AditiRavi/Neumorphic-Container/main/img2.jpeg" height="300em" /> <img src="https://raw.githubusercontent.com/AditiRavi/Neumorphic-Container/main/img4.jpeg" height="300em" /> <img src="https://raw.githubusercontent.com/AditiRavi/Neumorphic-Container/main/img6.jpeg" height="300em" />

## Getting Started
In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  neumorphic_container: "^0.0.1+1"
```

In your library add the following import:

```dart
import 'package:neumorphic_container/neumorphic_container.dart';
```

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

## Usage
Simple Container:
For best results, set the background
color of a surrounding widget to match
the color you set for the container.

```
NeumorphicContainer(
              height: 150,
              width: 150,
              borderRadius: 10,
              primaryColor: Color(0xfff0f0f0),
              curvature: Curvature.flat,
            ),
```
<img src="https://raw.githubusercontent.com/AditiRavi/Neumorphic-Container/main/img3.jpeg" height="300em" />

Container with Border:

```
 NeumorphicContainer(
              height: 130,
              width: 130,
              borderRadius: 150,
              primaryColor: Color(0xff292929),
              //add border color and thickness
              borderColor: Colors.orange,
              borderThickness: 1,
              curvature: Curvature.concave,
              child: Icon(Icons.phone,color: Colors.orange,size: 30,),
            ),
```
<img src="https://raw.githubusercontent.com/AditiRavi/Neumorphic-Container/main/img5.jpeg" height="300em" />

Curvature

```dart
import 'package:flutter/material.dart';
import 'package:neumorphic_container/neumorphic_container.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    Color color = Color(0xfff0f0f0);
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: NeumorphicContainer(
                height: 150,
                width: 150,
                borderRadius: 150,
                depth: 20,
                primaryColor: color,
                //flat neumorphism design
                curvature: Curvature.flat,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: NeumorphicContainer(
                height: 150,
                width: 150,
                borderRadius: 150,
                primaryColor: color,
                spread: 5,
                //convex neumorphism design
                curvature: Curvature.convex,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: NeumorphicContainer(
                height: 150,
                width: 150,
                borderRadius: 150,
                primaryColor: color,
                //concave neumorphism design
                curvature: Curvature.concave,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```
<img src="https://raw.githubusercontent.com/AditiRavi/Neumorphic-Container/main/img4.jpeg" height="400em" />

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

### Show some :heart: and star the repo to support the project
