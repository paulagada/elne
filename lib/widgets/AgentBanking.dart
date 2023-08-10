import 'package:elnexu_website_sample/animations/slideInText.dart';
import 'package:flutter/material.dart';

class AgentBankings extends StatefulWidget {
  final screenSize;

  const AgentBankings({Key? key, this.screenSize}) : super(key: key);

  @override
  State<AgentBankings> createState() => _AgentBankingsState();
}

class _AgentBankingsState extends State<AgentBankings> {
  bool _onHover = false;
  @override
  Widget build(BuildContext context) {
    double fontSize = widget.screenSize * 0.05;
    return Container(
      child: Column(
        mainAxisAlignment: widget.screenSize > 750 ? MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment: widget.screenSize > 750 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          SlideInText(
            duration: 1000,
            child: Text(
              "Agent banking at Its best",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: fontSize,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SlideInText(
            duration: 1500,
            child: Text(
              "Convenient, support for various transactions and highly secured agent banking.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SlideInText(
            duration: 2000,
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  _onHover = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _onHover = false;
                });
              },
              child: SizedBox(
                height: 50,
                width: 230,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _onHover ? Colors.blue : Colors.blue.shade800,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Become an Agent",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
