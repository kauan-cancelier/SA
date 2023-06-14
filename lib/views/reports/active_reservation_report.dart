import 'package:flutter/material.dart';

class ActiveReservationReport extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'dataEntrada': '2023-06-01',
      'reserva': 'Premium',
      'dataSaida': '2023-06-05',
      'valorDiaria': 2000,
      'valorTotal': 8000,
    },
    {
      'dataEntrada': '2023-06-02',
      'reserva': 'Simples',
      'dataSaida': '2023-06-06',
      'valorDiaria': 1200,
      'valorTotal': 4800,
    },
    {
      'dataEntrada': '2023-06-03',
      'reserva': 'Mediana',
      'dataSaida': '2023-06-07',
      'valorDiaria': 1500,
      'valorTotal': 6000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatório de reservas ativas'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height - kToolbarHeight - 20,
            padding: EdgeInsets.all(20),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Data de entrada')),
                      DataColumn(label: Text('Reserva')),
                      DataColumn(label: Text('Data de saída')),
                      DataColumn(label: Text('Valor Diária')),
                      DataColumn(label: Text('Valor Total')),
                    ],
                    rows: data.map((item) {
                      return DataRow(
                        cells: [
                          DataCell(Text(item['dataEntrada'])),
                          DataCell(Text(item['reserva'])),
                          DataCell(Text(item['dataSaida'])),
                          DataCell(Text(item['valorDiaria'].toString())),
                          DataCell(Text(item['valorTotal'].toString())),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
