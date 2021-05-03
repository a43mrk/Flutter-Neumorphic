import 'package:flutter/widgets.dart';

import '../../neumorphic_box_shape.dart';

class NeumorphicBoxShapeClipper extends StatelessWidget {
  final NeumorphicBoxShape shape;
  final Clip clipBehavior;
  final Widget child;

  NeumorphicBoxShapeClipper({
      this.clipBehavior = Clip.antiAlias,
      this.shape,
      this.child
    });

  CustomClipper _getClipper(NeumorphicBoxShape shape) {
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
