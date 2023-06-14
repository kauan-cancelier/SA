import 'package:flutter/material.dart';

class CustomAppBar {
  AppBar build(BuildContext context) {
    return AppBar(
      title: const Text('Tela inicial'),
      backgroundColor: const Color.fromARGB(255, 34, 34, 35),
      actions: [
        PopupMenuButton(
          icon: const Icon(Icons.menu),
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                value: 'opcao1',
                child: Text('Relatório de reservas ativas'),
              ),
              const PopupMenuItem(
                value: 'opcao2',
                child: Text('Relatório de reservas canceladas'),
              ),
              const PopupMenuItem(
                value: 'opcao3',
                child: Text('Relatório de reservas não pagas'),
              ),
              const PopupMenuItem(
                value: 'opcao4',
                child: Text('Relatório que fecham hoje'),
              ),

            ];
          },
          onSelected: (value) {
            // Lógica para lidar com a opção selecionada
            print('Opção selecionada: $value');
          },
        ),
      ],
    );
  }
}