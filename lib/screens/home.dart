import 'package:flutter/material.dart';
import 'package:sigaapp/models/subject.dart';
import 'package:sigaapp/models/user.dart';
import 'package:sigaapp/screens/subject/subject.dart';
import 'package:sigaapp/services/api_service.dart';
import 'package:sigaapp/widgets/button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sigga App"),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.person))
        ],
      ),
      body: FutureBuilder<User>(
        future: getUserFromJson(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data?.subjects == null || snapshot.data!.subjects!.isEmpty) {
            return const Center(child: Text('No subjects found.'));
          } else {
            List<Subject> subjects = snapshot.data!.subjects!;
            return Center( // Center the entire ListView
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  Subject subject = subjects[index];
                  return Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                    child: Button(
                      label: subject.name!,
                      backgroundColor: Colors.white,
                      color: Colors.black,
                      borderColor: const Color.fromARGB(255, 192, 189, 189),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SubjectDetails(
                            subject: subject,
                          ),
                        ),);
                      },
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}