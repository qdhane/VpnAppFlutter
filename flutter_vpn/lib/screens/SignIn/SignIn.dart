import 'package:flutter/material.dart';
import 'package:flutter_vpn/kDefaultSet.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'TGVPN',
                  style: TextStyle(
                    color: kDefColorText,
                    fontFamily: kDefFont,
                    fontSize: kdefFontSizeBig,
                    fontWeight: tbold
                  ),
                ),
                SizedBox(height: 40,)
                
              ],
            )
          ],
        ),
      ),
    );
  }
}