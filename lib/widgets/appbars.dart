import 'package:elnexu_website_sample/animations/HoverSpreadButton.dart';
import 'package:flutter/material.dart';

class Appbars extends StatefulWidget {
  final Function() onpressed;
  final screenWidth;

  const Appbars({Key? key, required this.onpressed, this.screenWidth})
      : super(key: key);

  @override
  State<Appbars> createState() => _AppbarsState();
}

class _AppbarsState extends State<Appbars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (widget.screenWidth > 750)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HoverSpreadButton(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                HoverSpreadButton(
                  text: "About Us",
                  icon: Icon(Icons.person),
                ),
                HoverSpreadButton(
                  text: "Product/Services",
                  icon: Icon(Icons.shop),
                ),
                HoverSpreadButton(
                  text: "Careers",
                  icon: Icon(Icons.work),
                ),
                HoverSpreadButton(
                  text: "Contact Us",
                  icon: Icon(Icons.phone),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: widget.onpressed,
                    icon: Icon(Icons.menu),
                  ),
                ),
              ],
            ),
    );
  }
}
