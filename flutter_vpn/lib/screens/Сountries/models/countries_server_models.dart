import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class Countries {
  final String? name;
  final CountryFlag? icon;
  

  Countries({this.name, this.icon,});

}


List<Countries> countriesData = [
  Countries(name: 'Франция', icon: CountryFlag.fromCountryCode('fr', height: 30, width: 30, borderRadius: 7,)),
  Countries(name: 'Германия', icon: CountryFlag.fromCountryCode('de',  height: 30, width: 30, borderRadius: 7,)),
  Countries(name: 'Латвия', icon: CountryFlag.fromCountryCode('lv',  height: 30, width: 30, borderRadius: 7,)),
  Countries(name: 'Япония', icon: CountryFlag.fromCountryCode('jp',  height: 30, width: 30, borderRadius: 7,)),
  Countries(name: 'Италия', icon: CountryFlag.fromCountryCode('it',  height: 30, width: 30, borderRadius: 7,)),
  Countries(name: 'Турция', icon: CountryFlag.fromCountryCode('tr', height: 30, width: 30, borderRadius: 7,)),
  Countries(name: 'Австрия', icon: CountryFlag.fromCountryCode('at',  height: 30, width: 30, borderRadius: 7,)),
  Countries(name: 'Сербия', icon: CountryFlag.fromCountryCode('rs',  height: 30, width: 30, borderRadius: 7,)),
  Countries(name: 'Канада', icon: CountryFlag.fromCountryCode('ca',  height: 30, width: 30, borderRadius: 7,)),
  Countries(name: 'Румыния', icon: CountryFlag.fromCountryCode('ro',  height: 30, width: 30, borderRadius: 7,)),

];