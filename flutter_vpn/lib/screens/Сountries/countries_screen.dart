import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vpn/kDefaultSet.dart';
import 'package:flutter_vpn/routes.dart';
import 'package:flutter_vpn/screens/%D0%A1ountries/models/countries_server_models.dart';
import 'package:go_router/go_router.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({super.key});

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDefBackground,
        leading: IconButton(onPressed: (){ context.push('/home'); },padding: EdgeInsets.only(left: kdefPadding), icon: Icon(Icons.keyboard_arrow_left_outlined, color: kDefColorIcon, size: 40, )),
        title: Text(
          'Выбрать сервер',
          style: TextStyle(
            fontFamily: kDefFont,
            fontSize: kdefFontSizeMedium,
            color: kDefColorText,
            fontWeight: tbold
          ),
        ),
      ),
      backgroundColor: kDefBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25,),
              SizedBox(
                height: 950,
                child: Countries())
            ],
          ),
        ),
      ),
    );
  }
}
class CountriesCard extends StatelessWidget {
  const CountriesCard({
    super.key,
    required this.name,
    required this.icon,
    required this.press 
    });

  final String? name;
  final CountryFlag? icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
         width: 390,
        height: 70,
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
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: 290,
          height: 50,
          decoration: BoxDecoration(
            color: kDefBackground,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name!,
                  style: TextStyle(
                    fontFamily: kDefFont,
                    fontSize: kdefFontSizeMedium,
                    color: kDefColorText,
                    fontWeight: tregular
                  ),
                ),
                icon!
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Countries extends StatelessWidget {
  const Countries({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: ListView.separated(
        itemCount: countriesData.length,
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        separatorBuilder: (BuildContext context, int index) => Divider(color: const Color.fromARGB(0, 255, 193, 7),),
      itemBuilder: (context, index) => CountriesCard(press: (){
        context.push('/home');
       }, 
          name: countriesData[index].name,
          icon: countriesData[index].icon,
          
          
        ),
      ),
    );
  }
}