import 'package:flutter/material.dart';
import 'package:flutter_vpn/kDefaultSet.dart';
import 'package:go_router/go_router.dart';

class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefBackground,
      appBar: AppBar(
        backgroundColor: kDefBackground,
        leading: IconButton(
            onPressed: () {
              context.push('/home');
            },
            padding: EdgeInsets.only(left: kdefPadding),
            icon: Icon(
              Icons.keyboard_arrow_left_outlined,
              color: kDefColorIcon,
              size: 40,
            )),
        title: Text(
          'O нас',
          style: TextStyle(
              fontFamily: kDefFont,
              fontSize: kdefFontSizeMedium,
              color: kDefColorText,
              fontWeight: tbold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TGVPN',
                  style: TextStyle(
                      fontFamily: kDefFont,
                      fontSize: 60,
                      fontWeight: tbold,
                      color: kDefColorText),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Версия 1.0.0',
                  style: TextStyle(
                      fontFamily: kDefFont,
                      color: kDefColorText,
                      fontSize: kdefFontSizeMedium,
                      fontWeight: tbold),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TGVPN - бесплатный VPN сервис.',
                  style: TextStyle(
                      fontFamily: kDefFont,
                      color: kDefColorText,
                      fontSize: kdefFontSizeMedium,
                      fontWeight: tregular),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 70,
                  child: Container(
                    decoration: BoxDecoration(
                        color: kDefBackground,
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'AppStore',
                        style: TextStyle(
                            fontFamily: kDefFont,
                            color: kDefColorText,
                            fontSize: kdefFontSizeMedium,
                            fontWeight: tregular),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'С нашими Условиями предоставления услуг можно \n ознакомиться по адресу \n tgvpn.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: kDefFont,
                      color: kDefColorText,
                      fontSize: 14,
                      fontWeight: tbold),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'С нашей Политикой конфиденциальности можно \n ознакомиться по адресу \n tgvpn.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: kDefFont,
                    color: kDefColorText,
                    fontSize: 14,
                    fontWeight: tbold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
