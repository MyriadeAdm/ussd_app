import 'package:flutter/material.dart';
import 'package:ussd_app/forfait_appel.dart';
import 'package:ussd_app/forfait_internet.dart';
import 'package:ussd_app/historique.dart';

class Constants {
  static const Color COLOR_1= Color.fromRGBO(222, 97, 43, 5);
  static const Color COLOR_2= Color.fromRGBO(34, 98, 97, 1);

  static final List<ForfaitInternet> FORFAIT_INTERNET = [
    ForfaitInternet('45 Mo', 'Validité 1 jour', '100'),
    ForfaitInternet('100 Mo', 'Validité 1 jour', '200'),
    ForfaitInternet('180 Mo', 'Validité 1 jour', '350'),
    ForfaitInternet('180 Mo', 'Validité 1 jour', '350'),
    ForfaitInternet('180 Mo', 'Validité 1 jour', '350'),
  ];

  static final List<ForfaitAppel> FORFAIT_APPEL = [
    ForfaitAppel('1000f V TR', '25 SMS', 'Validité 1 jour', '100'),
    ForfaitAppel('1000f V TR', '25 SMS', 'Validité 1 jour', '200'),
    ForfaitAppel('1000f V TR', '25 SMS', 'Validité 1 jour', '350'),
    ForfaitAppel('1000f V TR', '25 SMS', 'Validité 1 jour', '600'),
    ForfaitAppel('1000f V TR', '25 SMS', 'Validité 1 jour', '1000'),
  ];

  
  static final List<Historique> HISTORIQUE = [
    Historique('Forfait Appel', '200 xof', DateTime.now().toString().substring(0,10)),
    Historique('Forfait Appel', '1000 xof', DateTime.now().toString().substring(0,10)),
    Historique('Forfait Internet', '200 xof', DateTime.now().toString().substring(0,10)),
    Historique('Forfait Appel', '200 xof', DateTime.now().toString().substring(0,10)),
    Historique('Forfait Appel', '200 xof', DateTime.now().toString().substring(0,10)),
  ];
}