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
