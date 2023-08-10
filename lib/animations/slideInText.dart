import 'package:flutter/material.dart';

class SlideInText extends StatefulWidget {
  final Widget child;
  final int duration;
  const SlideInText({super.key, required this.child, required this.duration});

  @override
  State<SlideInText> createState() => _SlideInTextState();
}
class _SlideInTextState extends State<SlideInText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration,), // Set your desired duration
    );
    _animation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut, // Choose the desired animation curve
    ));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: _animation,
        child: widget.child,
        );
    }
}
