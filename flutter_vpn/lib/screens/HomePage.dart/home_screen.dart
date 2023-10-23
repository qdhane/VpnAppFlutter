import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vpn/kDefaultSet.dart';
import 'package:flutter_vpn/screens/%D0%A1ountries/countries_screen.dart';
import 'package:flutter_vpn/screens/SideNavigation/side_navigation_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:simple_icons/simple_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController OnText = new TextEditingController();
TextEditingController OffText = new TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefBackground,
      drawer: Drawer(
            backgroundColor: Color.fromARGB(146, 0, 0, 0),
            shadowColor: Colors.black,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: SingleChildScrollView(
              child: BlurryContainer(
                blur: 10,
                child: Column(children: const [
                  SideNavigationHeader(),
                  SideNavigationList()
                ]),
              ),
            )
          ),
      body: SafeArea(
        child: Column(
          children: [
            // ? APPBAR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: kdefPadding),
                  child: Builder(
                    builder: (context) {
                      return IconButton(
                      onPressed: (){
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: kDefColorIcon,
                        size: kdefIconSize,
                      ),
                    );
                    },
                  ),
                ),
                
                Text(
                  'TGVPN',
                  style: TextStyle(
                    fontFamily: kDefFont,
                    fontSize: kdefFontSizeBig,
                    fontWeight: tbold,
                    color: kDefColorText,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: kdefPadding),
                  child: IconButton(
                    onPressed: (){
                      context.go('/servers');
                    },
                    icon: Icon(
                        SimpleIcons.serverfault,
                      color: kDefColorIcon,
                      size: kdefIconSize,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),
            // ? ПРОГРЕСС БАР
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Бесплатно',
                          style: TextStyle(
                            fontSize: kdefFontSizeSmall,
                            color: kDefColorText,
                            fontWeight: tregular,
                            fontFamily: kDefFont
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Text(
                          '0/500МБ',
                          style: TextStyle(
                            fontSize: kdefFontSizeSmall,
                            color: kDefColorText,
                            fontWeight: tregular,
                            fontFamily: kDefFont
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: kdefPadding, right: kdefPadding),
                        child: LinearPercentIndicator(
                          width: 390,
                          lineHeight: 8.0,
                          percent: 0.5,
                          
                          barRadius:Radius.circular(30),
                          linearGradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              kDefColorText,
                              kDefColor2
                            ]
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 35,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Выбрать сервер', 
                        style: TextStyle(
                          color: kDefColorText,
                          fontSize: kdefFontSizeMedium,
                          fontWeight: tbold,
                          fontFamily: kDefFont
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       SizedBox(
                        height: 60,
                        width: 180,
                        child:
                        Container(
                          decoration: BoxDecoration(
                            color: kDefColorBtn,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: TextButton(
                            onPressed: (){
                             context.push('/servers');
                            },
                            child: Text(
                              'Франция',
                              style: TextStyle(
                                fontFamily: kDefFont,
                                color: kDefColorText2,
                                fontSize: kdefFontSizeMedium,
                                fontWeight: tregular
                              ),
        
                              ),
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 70,),
              // ? КНОПОЧКА
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [
                            kDefColor1,
                            kDefColor2
                          ]
                        ),
                        shape: BoxShape.circle
                      ),
                        child: Container(
                          padding: EdgeInsets.all(30),
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: kDefBackground,
                            shape: BoxShape.circle
                          ),
                          child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            kDefColor2,
                            kDefColor1
                          ]
                        ),
                        shape: BoxShape.circle
                      ),
                      child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: kDefBackground,
                            shape: BoxShape.circle
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                   SizedBox.fromSize(
                                    size: Size(100,100),
                                  child: ClipOval(
                                    child: Material(
                                      color: Color.fromARGB(0, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () {}, 
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.power_settings_new, size: kdefIconSizeBig,color: kDefColorIcon,), // <-- Icon
                                            Text("OFF", style: TextStyle(fontFamily: kDefFont, fontSize: kdefFontSizeSmall, color: kDefColorText, ),), // <-- Text
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    )
                  
                ],
              ),

                SizedBox(height: 50,),

              // ? INFOBAR
              // SizedBox(
              //   height: 150,
              //   width: 390,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Color.fromARGB(136, 0, 0, 0),
              //       borderRadius: BorderRadius.circular(50)
              //     ),
              //     child: Column(
              //       children: [
              //         SizedBox(height: 10,),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Text(
              //               'IP:212.35.160.41',
              //               style: TextStyle(
              //                 fontFamily: kDefFont,
              //                 fontSize: kdefFontSizeMedium,
              //                 color: kDefColorText,
              //                 fontWeight: tregular
              //               ),
              //             ),
              //           ],  
              //         ),
              //          SizedBox(height: 15,),
              //         Padding(
              //           padding:  EdgeInsets.only(left: 45, right: 55),
              //           child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Column(
              //                     children: [
              //                       Row(
              //                         children: [
              //                           Text(
              //                             'Прием',
              //                             style: TextStyle(
              //                               color: kDefColorText,
              //                               fontFamily: kDefFont,
              //                               fontSize: kdefFontSizeMedium,
              //                               fontWeight: tbold
              //                             ),
              //                           )
              //                         ],
              //                       ),
                                      
              //                       Row(
              //                         children: [
              //                           Text(
              //                             '500 КБ',
              //                             style: TextStyle(
              //                               color: kDefColorText,
              //                               fontFamily: kDefFont,
              //                               fontSize: kdefFontSizeMedium,
              //                               fontWeight: tregular
              //                             ),
              //                           )
              //                         ],
              //                       )
              //                     ],
              //                   ),
              //                   Column(
              //                     children: [
              //                       Row(
              //                         children: [
              //                           Text(
              //                             'Отдача',
              //                             style: TextStyle(
              //                               color: kDefColorText,
              //                               fontFamily: kDefFont,
              //                               fontSize: kdefFontSizeMedium,
              //                               fontWeight: tbold
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                       Row(
              //                         children: [
              //                           Text(
              //                             '600 КБ',
              //                             style: TextStyle(
              //                               color: kDefColorText,
              //                               fontFamily: kDefFont,
              //                               fontSize: kdefFontSizeMedium,
              //                               fontWeight: tregular
              //                             ),
              //                           )
              //                         ],
              //                       )
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //         )
              //       ],
              //     ),
              //   ),
              // )


          ],
        ),
      ),
    );
  }
}