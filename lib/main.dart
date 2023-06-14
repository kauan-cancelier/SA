import 'package:flutter/material.dart';
import 'package:situacao_de_aprendizagem/views/home%20page/home_page_view.dart';
import 'package:situacao_de_aprendizagem/views/login/login_view.dart';
import 'package:situacao_de_aprendizagem/views/reports/active_reservation_report.dart';
import 'package:situacao_de_aprendizagem/views/reports/cancelated_reservation_report.dart';
import 'package:situacao_de_aprendizagem/views/reports/closing_today_reservation_report.dart';
import 'package:situacao_de_aprendizagem/views/reports/non_paid_reservation_report.dart';
import 'package:situacao_de_aprendizagem/views/room%20page/room_home_view.dart';
import 'package:situacao_de_aprendizagem/views/room%20page/show_premium_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      initialRoute: '/active_reservation',

      routes: {
        '/login': (context) => const LoginView(), 
        '/home': (context) => const HomePageView(),
        '/room_page': (conntext) => const RoomHomeView(),
        '/premium':(context) => const ShowPremium(),
        '/active_reservation':(context) => ActiveReservationReport(),
        '/cancelated_reservation':(context) =>  CanceletedReservationReport(),
        '/non_paid_reservation':(context) => NonPaidReservationsReport(),
        '/closing_today_reservation':(context) => ClosingTodayReservationsReport(),

      },
    );
  }
}