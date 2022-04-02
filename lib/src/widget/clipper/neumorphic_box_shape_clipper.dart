import 'package:flutter/widgets.dart';

import '../../neumorphic_box_shape.dart';

class NeumorphicBoxShapeClipper extends StatelessWidget {
  final NeumorphicBoxShape shape;
  final Widget? child;
  final Clip clipBehavior;

  NeumorphicBoxShapeClipper(
      {required this.shape, this.child, this.clipBehavior = Clip.antiAlias});

  CustomClipper<Path>? _getClipper(NeumorphicBoxShape shape) {
    return shape.customShapePathProvider;
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipBehavior: this.clipBehavior,
      clipper: _getClipper(this.shape),
      child: child,
    );
  }
}
