import 'package:flutter/material.dart';

enum Curvature { concave, convex, flat }

class NeumorphicContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final int? depth;
  final Color? primaryColor;
  final Color? borderColor;
  final double? borderThickness;
  final double? spread;
  final Widget? child;
  final double? borderRadius;
  final BorderRadius? customRadius;
  final Curvature? curvature;

  NeumorphicContainer({
    this.child,
    this.height,
    this.width,
    this.depth,
    this.borderThickness,
    this.primaryColor,
    this.borderColor,
    this.spread,
    this.borderRadius,
    this.customRadius,
    this.curvature,
  });
 
  List<Color> smoothGradient(baseColor, depth) {
    return [
      baseColor,
      baseColor,
    ];
  }

  List<Color> concaveGradients(baseColor, depth) {
    return [
      _baseColor(baseColor, 0 - depth),
      _baseColor(baseColor, depth),
    ];
  }

  List<Color> convexGradients(baseColor, depth) {
    return [
      _baseColor(baseColor, depth),
      _baseColor(baseColor, 0 - depth),
    ];
  }

  Color _baseColor(Color color, amount) {
    Map colors = {"red": color.red, "green": color.green, "blue": color.blue};
    colors = colors.map((key, value) {
      if (value + amount < 0) return MapEntry(key, 0);
      if (value + amount > 255) return MapEntry(key, 255);
      return MapEntry(key, value + amount);
    });
    return Color.fromRGBO(colors["red"], colors["green"], colors["blue"], 1);
  }

  @override
  Widget build(BuildContext context) {
    final double? heightValue = height == null ? null : height;
    final double? widthValue = width == null ? null : width;
    final int? depthValue = depth == null ? 20 : depth;
    Color colorValue = primaryColor == null ? Color(0xFFf0f0f0) : primaryColor!;
    final double spreadValue = spread == null ? 6 : spread!;
    final bool eValue = false;
    BorderRadius? borderRadiusValue = borderRadius == null
        ? BorderRadius.zero
        : BorderRadius.circular(borderRadius!);
    final double? thicknessValue = borderThickness == null ? 0 : borderThickness;
    Border borderValue = borderColor == null
        ? Border.all(color: Colors.transparent, width: thicknessValue!)
        : Border.all(color: borderColor!, width: thicknessValue!);

    if (customRadius != null) {
      borderRadiusValue = customRadius;
    }
    final Curvature? curveTypeValue =
        curvature == null ? Curvature.flat : curvature;

    List<BoxShadow> shadowList = [
      BoxShadow(
          color: _baseColor(colorValue, eValue ? 0 - depthValue! : depthValue),
          offset: Offset(0 - spreadValue, 0 - spreadValue),
          blurRadius: spreadValue),
      BoxShadow(
          color: _baseColor(colorValue, eValue ? depthValue : 0 - depthValue!),
          offset: Offset(spreadValue, spreadValue),
          blurRadius: spreadValue)
    ];

    if (eValue) shadowList = shadowList.reversed.toList();
    if (eValue) colorValue = _baseColor(colorValue, 0 - depthValue ~/ 2);

    late List<Color> gradientColors;
    switch (curveTypeValue) {
      case Curvature.concave:
        gradientColors = concaveGradients(colorValue, depthValue);
        break;
      case Curvature.convex:
        gradientColors = convexGradients(colorValue, depthValue);
        break;
      case Curvature.flat:
        gradientColors = smoothGradient(colorValue, depthValue);
        break;
    }

    return Container(
      height: heightValue,
      width: widthValue,
      child: child,
      decoration: BoxDecoration(
          border: borderValue,
          borderRadius: borderRadiusValue,
          color: colorValue,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: gradientColors),
          boxShadow: shadowList),
    );
  }
}
