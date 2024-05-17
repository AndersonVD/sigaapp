import 'package:flutter/material.dart';
import 'package:sigaapp/models/subject.dart';
import 'package:sigaapp/screens/subject/frequency.dart';

class SubjectDetails extends StatefulWidget {
  final Subject subject;

  const SubjectDetails({super.key, required this.subject});

  @override
  State<SubjectDetails> createState() => _HomeState();
}

class _HomeState extends State<SubjectDetails> {
  int _selectedIndex = 0;

  late List<Widget> widgetOptions = <Widget>[
    Text('Nome: ${widget.subject.name!}'),
    Frequency(subject: widget.subject),
    Text('Notas: ${widget.subject.grade!}')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sigga App'),
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article_rounded),
            label: 'Notícias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Frequência',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Notas',
          ),
        ],

        currentIndex: _selectedIndex,
        selectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        unselectedLabelStyle: const TextStyle(fontSize: 16),
        selectedIconTheme: const IconThemeData(
          size: 30.0,
          color: Colors.purple
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
