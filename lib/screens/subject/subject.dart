import 'package:flutter/material.dart';
import 'package:sigaapp/models/subject.dart';
import 'package:sigaapp/screens/subject/news.dart';
import 'package:sigaapp/widgets/info_table.dart';

class SubjectDetails extends StatefulWidget {
  final Subject subject;

  const SubjectDetails({
    super.key, 
    required this.subject,
  });

  @override
  State<SubjectDetails> createState() => _HomeState();
}

class _HomeState extends State<SubjectDetails> {
  int _selectedIndex = 0;

  late List<Widget> widgetOptions = <Widget>[
    News(subject: widget.subject),
    InfoTable(values: widget.subject.frequency!, info: "Frequência"),
    InfoTable(values: widget.subject.grade!, info: "Notas")
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
        automaticallyImplyLeading: false,
        title: const Text("Sigga App"),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.person, size: 36, color: Colors.black,)
          )
        ],
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
            label: 'Notas'
          ),
        ],

        currentIndex: _selectedIndex,
        selectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        selectedItemColor: Colors.green[800],
        unselectedLabelStyle: const TextStyle(fontSize: 16),
        selectedIconTheme: IconThemeData(
          size: 30.0,
          color: Colors.green[700]
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
