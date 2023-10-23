import 'package:flutter/material.dart';
import 'package:flutter_vpn/kDefaultSet.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_icons/simple_icons.dart';

import '../HomePage.dart/home_screen.dart';


class SideNavigationList extends StatefulWidget {
  const SideNavigationList({super.key});

  @override
  State<SideNavigationList> createState() => _SideNavigationListState();
}

class _SideNavigationListState extends State<SideNavigationList> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.monetization_on_outlined, color: kDefColorIcon, ),
            title: Text('Улучшить до VIP',style: TextStyle(color: kDefColor2, fontSize: kdefFontSizeMedium, fontWeight: tbold),),
            onTap: () {
             context.push('/vip');
            },
          ),
          ListTile(
            leading: Icon(SimpleIcons.serverfault, color: kDefColorIcon,),
            title: Text('Сервера',style: TextStyle(color: kDefColorText, fontSize: kdefFontSizeMedium, fontWeight: tregular),),
            onTap: () {
              context.push('/servers');
            },
          ),
          
          ListTile(
            leading: Icon(Icons.star, color: goldenColor,),
            title: Text('Оценить нас',style: TextStyle(color: kDefColorText, fontSize: kdefFontSizeMedium, fontWeight: tregular),),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: kDefColorIcon,),
            title: Text('О нас',style: TextStyle(color: kDefColorText, fontSize: kdefFontSizeMedium, fontWeight: tregular),),
            onTap: () {
             
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: kDefColorIcon,),
            title: Text('Выйти',style: TextStyle(color: kDefColorText, fontSize: kdefFontSizeMedium, fontWeight: tregular),),
            onTap: () {
             
            },
          ),
          ListTile(
            leading: Icon(Icons.update, color: kDefColorIcon,),
            title: Text('Регистрация',style: TextStyle(color: kDefColorText, fontSize: kdefFontSizeMedium, fontWeight: tregular),),
            onTap: () {
             context.push('/signin');
            },
          ),
        ],
      ),
    );
  }
}
