import 'package:flutter/material.dart';

class InfoTable extends StatelessWidget {
  final Map<String, String> values;
  final String info;

  const InfoTable({
    super.key, 
    required this.values,
    required this.info
  });

  @override
  Widget build(BuildContext context) {
    final filteredList = values.keys.where((value) => value != 'average'); 

    const textStyle = TextStyle(
      fontSize: 20, 
      fontWeight: FontWeight.w500
    );

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
        children: [
          Text(
            "Relatório de $info",
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w500)
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Table(
              border: TableBorder.all(borderRadius: BorderRadius.circular(10.0)),
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1)
              },
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        info == "Notas" ? "Atividade" : "Data",
                        textAlign: TextAlign.center,
                        style: textStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        info == "Notas" ? "Nota" : "Situação",
                        textAlign: TextAlign.center,
                        style: textStyle),
                    )
                  ]
                ),
                TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          info == "Notas" ? "Média" : "Frequência Total",
                          textAlign: TextAlign.center,
                          style: textStyle
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          values['average']!,
                          textAlign: TextAlign.center,
                          style: textStyle
                        ),
                      ),
                    ]
                  ),
                  ...filteredList.map((value) => 
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            value == 'state' ? 'Situção' : value, 
                            textAlign: TextAlign.center,
                            style: textStyle
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            values[value]!,
                            textAlign: TextAlign.center,
                            style: textStyle
                          ),
                        ),
                      ]
                    ),
                  )
                ],
              )
            )
          ]
        )
      )
    );
  }
}