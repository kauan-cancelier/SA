import 'package:flutter/material.dart';

class CanceletedReservationReport extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'dataEntrada': '2023-06-01',
      'reserva': 'Premium',
      'dataSaida': '2023-06-05',
      'valorDiaria': 2000,
      'valorTotal': 8000,
      'cancelado': false,
    },
    {
      'dataEntrada': '2023-06-02',
      'reserva': 'Simples',
      'dataSaida': '2023-06-06',
      'valorDiaria': 1200,
      'valorTotal': 4800,
      'cancelado': true,
    },
    {
      'dataEntrada': '2023-06-03',
      'reserva': 'Mediana',
      'dataSaida': '2023-06-07',
      'valorDiaria': 1500,
      'valorTotal': 6000,
      'cancelado': true,
    },
  ];

  CanceletedReservationReport({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> reservasCanceladas =
        data.where((reserva) => reserva['cancelado']).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Relatório de reservas canceladas'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: SingleChildScrollView(
            child: DataTable(
              columns: [
                DataColumn(label: Text('Data de Entrada')),
                DataColumn(label: Text('Reserva')),
                DataColumn(label: Text('Data de Saída')),
                DataColumn(label: Text('Valor Diária')),
                DataColumn(label: Text('Valor Total')),
              ],
              rows: reservasCanceladas
                  .map((reserva) => DataRow(
                        cells: [
                          DataCell(Text(reserva['dataEntrada'])),
                          DataCell(Text(reserva['reserva'])),
                          DataCell(Text(reserva['dataSaida'])),
                          DataCell(Text(reserva['valorDiaria'].toString())),
                          DataCell(Text(reserva['valorTotal'].toString())),
                        ],
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
