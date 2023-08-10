import 'package:elnexu_website_sample/animations/fadeinWidget.dart';
import 'package:flutter/material.dart';

class ThirdPart extends StatefulWidget {
  final screenWidth;
  const ThirdPart({Key? key, this.screenWidth}) : super(key: key);

  @override
  State<ThirdPart> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<ThirdPart> {
  bool _boxHover = false;
  bool _boxHover2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 50, top: 100,),
      color: const Color(0xffe7eaf5),
      width: double.maxFinite,
      child: widget.screenWidth > 1050 ?
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FadeInWidget(
                duration: 2500,
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _boxHover = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _boxHover = false;
                    });
                  },
                  child: SizedBox(
                    height: 470,
                    width: widget.screenWidth/2.2,
                    child: Card(
                      shadowColor: Color(0xff5D1300),
                      color: Colors.white,
                      elevation: _boxHover ? 10 : 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone_android,
                            size: 70,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Agent",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.blue.shade800,
                            ),
                          ),
                          Text(
                            "Banking",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.blue.shade800,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            height: 50,
                            width: 230,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade800,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                "Sign up as an Agent",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              FadeInWidget(
                duration: 2700,
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _boxHover2 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _boxHover2 = false;
                    });
                  },
                  child: SizedBox(
                    height: 470,
                    width: widget.screenWidth/2.2,
                    child: Card(
                      shadowColor: Color(0xff5D1300),
                      color: _boxHover2 ? Color(0xff8c231b) : Colors.white,
                      elevation: _boxHover2 ? 10 : 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.credit_card,
                            size: 70,
                            color: _boxHover2 ? Colors.white : Colors.red.shade300,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Free web pay",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color:
                              _boxHover2 ? Colors.white : Colors.blue.shade800,
                            ),
                          ),
                          Text(
                            "Integration",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color:
                              _boxHover2 ? Colors.white : Colors.blue.shade800,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade800,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                "Connect to a developer",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
          : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInWidget(
            duration: 2500,
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  _boxHover = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _boxHover = false;
                });
              },
              child: SizedBox(
                height: 450,
                width: widget.screenWidth/1.4,
                child: Card(
                  shadowColor: Color(0xff5D1300),
                  color: Colors.white,
                  elevation: _boxHover ? 10 : 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_android,
                        size: 70,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Agent",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue.shade800,
                        ),
                      ),
                      Text(
                        "Banking",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 50,
                        width: 230,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade800,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Sign up as an Agent",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          FadeInWidget(
            duration: 2700,
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  _boxHover2 = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _boxHover2 = false;
                });
              },
              child: SizedBox(
                height: 450,
                width: widget.screenWidth/1.4,
                child: Card(
                  shadowColor: Color(0xff5D1300),
                  color: _boxHover2 ? Color(0xff8c231b) : Colors.white,
                  elevation: _boxHover2 ? 10 : 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.credit_card,
                        size: 70,
                        color: _boxHover2 ? Colors.white : Colors.red.shade300,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Free web pay",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color:
                              _boxHover2 ? Colors.white : Colors.blue.shade800,
                        ),
                      ),
                      Text(
                        "Integration",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color:
                              _boxHover2 ? Colors.white : Colors.blue.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade800,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Connect to a developer",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
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
