import 'package:flutter/material.dart';

class NonPaidReservationsReport extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'dataEntrada': '2023-06-01',
      'reserva': 'Premium',
      'dataSaida': '2023-06-05',
      'valorDiaria': 2000,
      'valorTotal': 8000,
      'cancelado': false,
      'pago': true,
    },
    {
      'dataEntrada': '2023-06-02',
      'reserva': 'Simples',
      'dataSaida': '2023-06-06',
      'valorDiaria': 1200,
      'valorTotal': 4800,
      'cancelado': true,
      'pago': false,
    },
    {
      'dataEntrada': '2023-06-03',
      'reserva': 'Mediana',
      'dataSaida': '2023-06-07',
      'valorDiaria': 1500,
      'valorTotal': 6000,
      'cancelado': true,
      'pago': true,
    },
    {
      'dataEntrada': '2023-06-12',
      'reserva': 'Premium',
      'dataSaida': '2023-06-15',
      'valorDiaria': 2000,
      'valorTotal': 6000,
      'cancelado': false,
      'pago': false,
    },
    {
      'dataEntrada': '2023-06-13',
      'reserva': 'Simples',
      'dataSaida': '2023-06-14',
      'valorDiaria': 1200,
      'valorTotal': 2400,
      'cancelado': false,
      'pago': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> reservasNaoPagas =
        data.where((reserva) => !reserva['pago']).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Reservas não pagas'),
        backgroundColor: Colors.black,
      ),
      body: _buildReservationList(reservasNaoPagas, color: Colors.red),
    );
  }

  Widget _buildReservationList(List<Map<String, dynamic>> reservations,
      {Color? color}) {
    return ListView.builder(
      itemCount: reservations.length,
      itemBuilder: (context, index) {
        return Card(
          color: color,
          child: ListTile(
            title: Text(
              'Data de entrada: ${reservations[index]['dataEntrada']}',
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Reserva: ${reservations[index]['reserva']}'),
                Text('Data de saída: ${reservations[index]['dataSaida']}'),
                Text('Valor Diária: ${reservations[index]['valorDiaria']}'),
                Text('Valor Total: ${reservations[index]['valorTotal']}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
