import 'package:flutter/material.dart';
import 'package:situacao_de_aprendizagem/helpers/custom_app_bar.dart';
import 'package:situacao_de_aprendizagem/helpers/custom_room_component.dart';

class RoomHomeView extends StatefulWidget {
  const RoomHomeView({Key? key}) : super(key: key);

  @override
  _RoomHomeViewState createState() => _RoomHomeViewState();
}

class _RoomHomeViewState extends State<RoomHomeView> {
  final CustomAppBar appBar = CustomAppBar();

  @override
  Widget build(BuildContext context) {
    void clicado() {
      debugPrint('clicado');
    }

    void showPremium() {
      Navigator.pushNamed(context, '/premium');
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar.build(context),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomRoomComponent(
                description:
                    'Perfeito para quem quer ter o melhor custo benefício',
                image:
                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/7c/28/a4/pousada-xue.jpg?w=700&h=-1&s=1',
                hotelName: 'Pousada Simples',
                rating: 3,
                onPressed: clicado,
                value: 1200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomRoomComponent(
                description: 'Perfeito para quem quer com o seu amor',
                image:
                    '', // Substitua pela URL da imagem desejada
                hotelName: 'Pousada Intermediária',
                rating: 4,
                onPressed: clicado,
                value: 1500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomRoomComponent(
                description: 'Puro luxo',
                image:
                    'https://www.refugiosnointerior.com.br/sistema/_lib/file/img/lugar/6534/capa_pousada_do_lago_em_brotas(1).jpg',
                hotelName: 'Pousada Premium',
                rating: 5,
                onPressed: showPremium,
                value: 2000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
