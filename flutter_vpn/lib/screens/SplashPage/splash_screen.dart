import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vpn/kDefaultSet.dart';
import 'package:flutter_vpn/screens/HomePage.dart/home_screen.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
void initState(){
  super.initState();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  Future.delayed(Duration(seconds: 2),(){
   context.go('/home');
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefBackground,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Center(
               child: SizedBox(
                width: 400.0,
                child: TextLiquidFill(
                  loadDuration: Duration(seconds: 2),
                  waveDuration: Duration(seconds: 1),
                  text: 'TGVPN',
                  waveColor: kDefColor2,
                  boxBackgroundColor: kDefBackground,
                  textStyle: TextStyle(
                    fontSize: 80.0,
                    fontWeight: tbold,
                    fontFamily: kDefFont,
                 ),
                boxHeight: 100.0,
                       ),
             ),
             )
          ],
        ),
      ),
    );
  }
}