
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive UI'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Mobile Layout',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.people),
                      title: Text('Students'),
                      subtitle: Text('Manage Students'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.book),
                      title: Text('Courses'),
                      subtitle: Text('Manage Courses'),
                    ),
                  ),
                ],
              );
            }

            return Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Desktop / Tablet Layout',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.people),
                          title: Text('Students'),
                          subtitle: Text('Manage Students'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.book),
                          title: Text('Courses'),
                          subtitle: Text('Manage Courses'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
