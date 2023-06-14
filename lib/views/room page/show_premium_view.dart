import 'package:flutter/material.dart';
import 'package:situacao_de_aprendizagem/helpers/custom_app_bar.dart';
import 'package:situacao_de_aprendizagem/helpers/custom_show.dart';

class ShowPremium extends StatefulWidget {
  const ShowPremium({super.key});

  @override
  State<ShowPremium> createState() => _ShowPremiumState();
}

class _ShowPremiumState extends State<ShowPremium> {
  final CustomAppBar appBar = CustomAppBar();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar.build(context),
        body: Column(
          children: [
            CustomShow(
              hotelName: 'Pousada premium',
              images: const [
                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/7c/28/a4/pousada-xue.jpg?w=700&h=-1&s=1',
                'https://media-cdn.tripadvisor.com/media/photo-s/17/1b/f6/83/pousada-villa-d-amore.jpg',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIFZgcwCrAmZdbPjyZXdztrNbB-gkJFj0YJCSQQRwbRk94CwV6fa1skVJ-1TA8g6wXaRo&usqp=CAU',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy8xNrja_TfyLr50WEBWW5_awiVLbG3BGsAgaIgKdpfIAlrdsWCJ_FvlkJnUp8Ea4k7Lg&usqp=CAU',
                'https://www.penaestrada.blog.br/wp-content/uploads/2016/04/serra-do-rio-do-rastro-27.jpg.webp',
              ],
              description: 'valor: 2000 o final de semana')
          ],
        ),
      ),
    );
  }
}