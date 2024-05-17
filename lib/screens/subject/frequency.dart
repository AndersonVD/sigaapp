import 'package:flutter/material.dart';
import 'package:sigaapp/models/subject.dart';

class Frequency extends StatelessWidget {
  final Subject subject;
  const Frequency({super.key, required this.subject});

  final _textStyle = const TextStyle(
    fontSize: 20, 
    fontWeight: FontWeight.w500
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column (
        children: [
        const Text("Relatório de Frequência", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
        Table(
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
                  "Data",
                  style: _textStyle),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Situação",
                  style: _textStyle),
              )
            ]
          ),
          ...subject.frequency!.keys.map((date) {
            return TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    date, 
                    style: _textStyle
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    subject.frequency![date]!, 
                    style: _textStyle
                  ),
                ),
              ]
            );
          })
        ],
      ),],
      )
    );
  }
}