import 'package:flutter/material.dart';

class HoverSpreadButton extends StatefulWidget {
  final String text;
  final Widget icon;

  const HoverSpreadButton({super.key, required this.text, required this.icon});

  @override
  State<HoverSpreadButton> createState() => _HoverSpreadButtonState();
}

class _HoverSpreadButtonState extends State<HoverSpreadButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (v) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (hover) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.only(
          left: _isHovered ? 16.0 : 8.0,
          right: _isHovered ? 16.0 : 8.0,
          top: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: widget.icon,
              color: _isHovered ? Colors.red : Colors.blue,
              onPressed: () {},
            ),
            if (_isHovered) SizedBox(width: 8.0),
            if (_isHovered)
              Text(
                widget.text,
                style: TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
