import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teamp_app/screens/homeScreen/components/body.dart';

import '../../constants.dart';
import '../../sizeConfig.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/homeScreen";
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: Color.fromARGB(73, 230, 228, 228),

          // boxShadow: BoxShadow(offset: Offset(0, -15))
        ),
        child: SafeArea(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: SvgPicture.asset("assets/icons/Location point.svg", color: appPrimaryColor), onPressed: (){}),
            IconButton(onPressed: (){}, icon: Icon(Icons.home, color: appPrimaryColor, size: getScreenWidth(25),)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications, color: appPrimaryColor, size: getScreenWidth(25),)),
            IconButton(icon: SvgPicture.asset("assets/icons/User Icon.svg", color: appPrimaryColor,), onPressed: (){}),
          ]
        )),
      ),
    );
  }
}