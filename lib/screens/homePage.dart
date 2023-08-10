import 'package:elnexu_website_sample/helper/drawer.dart';
import 'package:elnexu_website_sample/widgets/3rdPart.dart';
import 'package:elnexu_website_sample/widgets/4thPart.dart';
import 'package:elnexu_website_sample/widgets/AgentBanking.dart';
import 'package:elnexu_website_sample/widgets/appbars.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (
      BuildContext context,
      BoxConstraints constraints,
    ) {
      double screenWidth = constraints.maxWidth;
      double fontSize = screenWidth * 0.05;
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: Color(0xfffaeef0),

          endDrawer: (screenWidth > 750) ? null : CustomDrawer(),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Appbars(
                  onpressed: () {
                    _openDrawer();
                  },
                  screenWidth: screenWidth,
                ),
                AgentBankings(
                  screenSize: screenWidth,
                ),
                SizedBox(
                  height: 60,
                ),
                ThirdPart(screenWidth: screenWidth,),
                ForthPart(screenWidth: screenWidth,),
              ],
            ),
          ),
        );
      }
    );
  }
}



