import 'package:flutter/material.dart';

class ForthPart extends StatefulWidget {
  final screenWidth;

  const ForthPart({Key? key, required this.screenWidth}) : super(key: key);

  @override
  State<ForthPart> createState() => _ForthPartState();
}

class _ForthPartState extends State<ForthPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 50,
        left: 20,
        right: 20,
        bottom: 50,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffefc9c9),
            Color(0xffc4cae7),
          ],
        ),
      ),
      child: widget.screenWidth > 750
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "SIGN UP TO GET OUR EXCLUSIVE OFFERS",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          width: 250,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor: Colors.blue.shade100,
                                hintText: "Enter Your email address"),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                              "Sign up",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                   Container(
                     height: 130,
                     width: 3,
                     color: Colors.white,
                   ),
                    Column(
                      children: [
                        Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "+2348069918721, +2348063104475",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "support@elnexuconsult.com",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(Icons.facebook),
                            Icon(Icons.call),
                            Icon(Icons.info_outlined),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
                SizedBox(height: 30,),
                Text("© 2020 - 2023 Elnexu Consults"),

              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SIGN UP TO GET OUR EXCLUSIVE OFFERS",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        filled: true,
                        fillColor: Colors.blue.shade100,
                        hintText: "Enter Your email address"),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "+2348069918721, +2348063104475",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  "support@elnexuconsult.com",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.facebook),
                    Icon(Icons.call),
                    Icon(Icons.info_outlined),
                  ],
                ),
                Text("© 2020 - 2023 Elnexu Consults"),
              ],
            ),
    );
  }
}
