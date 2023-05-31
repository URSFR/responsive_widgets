import 'package:flutter/material.dart';

class ResponsiveContainer extends StatelessWidget {
  final double desiredWidth;
  final double desiredHeight;
  final Widget child;
  final Color? backgroundColor;
  const ResponsiveContainer({
    super.key, required this.desiredWidth, required this.desiredHeight, required this.child,this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: backgroundColor,
      width: (size.width*desiredWidth)/610,
      height: (size.height*desiredHeight)/610,
      child: child,
    );
  }
}

