import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vpn/kDefaultSet.dart';

class SideNavigationHeader extends StatefulWidget {
  const SideNavigationHeader({super.key});

  @override
  State<SideNavigationHeader> createState() => _SideNavigationHeaderState();
}

class _SideNavigationHeaderState extends State<SideNavigationHeader> {
  final user = FirebaseAuth.instance.currentUser;
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      color: Color.fromARGB(0, 255, 255, 255),
      width: double.infinity,
      height: 220,
      padding: EdgeInsets.only(top: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('TGVPN', style: TextStyle(fontSize: kdefFontSizeBig, fontWeight: tbold, color: kDefColorText),),
          SizedBox(height: 10,),
          //Text('qdhane', style: TextStyle(fontSize: kdefFontSizeMedium, fontWeight: tregular, color: kDefColorText),),
          Text('${user?.email}', style: TextStyle(fontSize: kdefFontSizeSmall, fontWeight: tregular, color: kDefColorText),)
        ],
      ),

    );
  }
}