import 'package:flutter/material.dart';
import 'package:sigaapp/models/subject.dart';

class News extends StatelessWidget {
  final Subject subject;
  const News({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    final newsItem = subject.news!.entries.toList();
    return ListView.builder(
      itemCount: subject.news!.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: Column(
            children: [
                Card(
                  child: ListTile(
                    title: Text(
                      newsItem[index].key,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500)
                    ),
                    subtitle: Text(
                      newsItem[index].value,
                      style: const TextStyle(fontSize: 16)
                      ),
                  )
                ),
            ],
          ),
        );
      }
    );
  }

}