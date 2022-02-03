import 'package:flutter/cupertino.dart';

class AnimatedImageExtension extends StatefulWidget {
  const AnimatedImageExtension({Key? key}) : super(key: key);

  @override
  _AnimatedImageExtensionState createState() => _AnimatedImageExtensionState();
}

class _AnimatedImageExtensionState extends State<AnimatedImageExtension>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat();
  late final Animation<Offset> _animation =
      Tween(begin: Offset.zero, end: const Offset(0, 0.08)).animate(_controller);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset("assets/rocket.png"),
    );
  }
}
