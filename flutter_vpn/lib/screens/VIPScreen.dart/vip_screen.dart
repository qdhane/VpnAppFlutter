import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vpn/kDefaultSet.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_icons/simple_icons.dart';

class VipScreen extends StatelessWidget {
  const VipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color.fromRGBO(255, 67, 202, 1),
      Color.fromRGBO(116, 67, 255, 1),
  Color.fromRGBO(17, 21, 53, 1),
  
  
];
 const colorizeTextStyle = TextStyle(
  fontSize: 25.0,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.bold
);

    return Scaffold(
      backgroundColor: kDefBackground,
      appBar: AppBar(
        backgroundColor: kDefBackground,
        leading: IconButton(onPressed: (){ context.push('/home'); },padding: EdgeInsets.only(left: kdefPadding), icon: Icon(Icons.keyboard_arrow_left_outlined, color: kDefColorIcon, size: 40, )),
        title: Text(
          'Обновится до VIP',
          style: TextStyle(
            fontFamily: kDefFont,
            fontSize: kdefFontSizeMedium,
            color: kDefColorText,
            fontWeight: tbold
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 390,
                height: 700,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          kDefColor2,
                          kDefColor1
                        ]
                      ),
                      borderRadius: BorderRadius.circular(30)
                ),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: kDefBackground
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: kdefPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 270,
                              height: 100,
                              child: AnimatedTextKit(
                               animatedTexts: [
                                  ColorizeAnimatedText(
                                    'Обновиться до VIP',
                                    textStyle: colorizeTextStyle,
                                    colors: colorizeColors,
                                  ),
                                ],
                                isRepeatingAnimation: true,
                                repeatForever: true,
                                pause: Duration(milliseconds: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Icon(SimpleIcons.dotnet, color: kDefColor2,),
                            SizedBox(width: 7,),
                            Text(
                              'Полность без рекламы!',
                              style: TextStyle(
                                fontFamily: kDefFont,
                                fontSize: kdefFontSizeMedium,
                                color: kDefColorText,
                                fontWeight: tregular
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Icon(Icons.vpn_key, color: kDefColor2,),
                            SizedBox(width: 7,),
                            Text(
                              'Безлимитный VPN!',
                              style: TextStyle(
                                fontFamily: kDefFont,
                                fontSize: kdefFontSizeMedium,
                                color: kDefColorText,
                                fontWeight: tregular
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Icon(SimpleIcons.serverfault, color: kDefColor2,),
                            SizedBox(width: 7,),
                            Text(
                              'Свой прокси!',
                              style: TextStyle(
                                fontFamily: kDefFont,
                                fontSize: kdefFontSizeMedium,
                                color: kDefColorText,
                                fontWeight: tregular
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                    // ? ПОДПИСКИ
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                 Container(
                                    width: 110,
                                    height: 150,
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.center,
                                            colors: [
                                              kDefColor2,
                                              kDefColor1
                                            ]
                                         ),
                                         borderRadius: BorderRadius.circular(20)
                                   ),
                                    child: Container(
                                      width: 200,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: kDefBackground
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '1 неделя',
                                                  style: TextStyle(
                                                    fontFamily: kDefFont,
                                                    fontSize: kdefFontSizeSmall,
                                                    color: kDefColorText,
                                                    fontWeight: tregular
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  '₽299.00',
                                                  style: TextStyle(
                                                    fontFamily: kDefFont,
                                                    fontSize: kdefFontSizeMedium,
                                                    color: kDefColorText,
                                                    fontWeight: tbold
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                 )
                              ],
                            ),
                          ),
                          SizedBox(width: 5,),
                          Column(
                            children: [
                               Container(
                                  width: 110,
                                  height: 150,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.center,
                                          colors: [
                                            kDefColor2,
                                            kDefColor1
                                          ]
                                       ),
                                       borderRadius: BorderRadius.circular(20)
                                 ),
                                  child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: kDefBackground
                                    ),
                                    child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '1 месяц',
                                                  style: TextStyle(
                                                    fontFamily: kDefFont,
                                                    fontSize: kdefFontSizeSmall,
                                                    color: kDefColorText,
                                                    fontWeight: tregular
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  '₽649.00',
                                                  style: TextStyle(
                                                    fontFamily: kDefFont,
                                                    fontSize: kdefFontSizeMedium,
                                                    color: kDefColorText,
                                                    fontWeight: tbold
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                  )
                               )
                            ],
                          ),
                          SizedBox(width: 5,),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                 Container(
                                    width: 110,
                                    height: 150,
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.center,
                                            colors: [
                                              kDefColor2,
                                              kDefColor1
                                            ]
                                         ),
                                         borderRadius: BorderRadius.circular(20)
                                   ),
                                    child: Container(
                                      width: 200,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color.fromARGB(0, 255, 193, 7)
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '1 год',
                                                  style: TextStyle(
                                                    fontFamily: kDefFont,
                                                    fontSize: kdefFontSizeSmall,
                                                    color: kDefColorText,
                                                    fontWeight: tregular
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  '₽2750.00',
                                                  style: TextStyle(
                                                    fontFamily: kDefFont,
                                                    fontSize: kdefFontSizeMedium,
                                                    color: kDefColorText,
                                                    fontWeight: tbold
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                 )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           GestureDetector(
                            onTap: () {
                              context.push('/home');
                            },
                             child: Text(
                              'Продолжить с рекламой',
                              style: TextStyle(
                                fontFamily: kDefFont,
                                fontSize: kdefFontSizeSmall,
                                color: const Color.fromARGB(255, 130, 130, 130),
                                fontWeight: tregular
                              ),
                                                     ),
                           ),
                          
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}