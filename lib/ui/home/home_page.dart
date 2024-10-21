import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_project/utils/colors.dart';
import 'package:portfolio_project/utils/textstyle_project.dart';

import '../../utils/text_path.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ProjectColors.backgroundColors,
      body: SafeArea(
          child: DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                ProjectColors.gradientColor,
                ProjectColors.backgroundColors,
              ])),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                    child: Row(
                      children: [
                        Text(
                          ProjectTextPath.appBarNAME,
                          style: TextstyleProject.appBarName,
                        ),
                        Spacer(),
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          "Project",
                          style: TextstyleProject.appBarSubTitle14,
                        ),
                        Padding(padding: EdgeInsets.only(left: 13)),
                        Text(
                          "Carrier",
                          style: TextstyleProject.appBarSubTitle14,
                        ),
                      ],
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(right: 20)),
                  BioDataWidget(),
                  Expanded(
                    child: SizedBox(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[],
                          ),
                        )),
                  )
                  // Column(
                  //   mainAxisSize: MainAxisSize.max,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //
                  //
                  //   ],
                  // ),
                ],
              ))),
    );
  }
}

class BioDataWidget extends StatelessWidget {
  const BioDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.only(top: 100)),
        Text(
          "M.Tamil Vanan",
          style: TextstyleProject.nameStyleShow,
        ),
        Padding(padding: EdgeInsets.only(top: 15)),
        Text(
          "Flutter developer📱",
          style: TextstyleProject.developerStyleShow,
        ),
        Padding(padding: EdgeInsets.only(top: 30)),
        Text(
          "I build high performance,Android & IOS\nwith pixel perfect UI",
          style: TextstyleProject.contentShow,
        ),
      ],
    ));
  }
}
