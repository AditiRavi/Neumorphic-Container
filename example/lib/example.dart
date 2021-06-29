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
      body: SingleChildScrollView(
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
                borderRadius: 55,
                primaryColor: Color(0xff292929),
                borderColor: Colors.orange,
                borderThickness: 1,
                spread: 5,
                //convex neumorphism design
                curvature: Curvature.convex,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: NeumorphicContainer(
                height: 250,
                width: 250,
                borderRadius: 75,
                primaryColor: color,
                //concave neumorphism design
                curvature: Curvature.concave,

                child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: NeumorphicContainer(
                      height: 50,
                      width: 50,
                      borderRadius: 5,
                      primaryColor: color,
                      //concave neumorphism design
                      curvature: Curvature.convex,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
