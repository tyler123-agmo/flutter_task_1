import 'package:flutter/material.dart';
import 'package:flutter_task_1/museum_calculate.dart';
import 'museum.dart';
import 'museum_model.dart';

void main() {
  runApp(const MyMuseum());
}

class MyMuseum extends StatefulWidget {
  const MyMuseum({super.key});

  @override
  State<MyMuseum> createState() => _MyMuseumState();
}

class _MyMuseumState extends State<MyMuseum> {
  List<Museum> museums = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      museums = await getMuseums();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    const title = "My Museum List";

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: museums.length,
          itemBuilder: (context, index) {
            final museum = museums[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MuseumCalculate(museum: museum),
                    ));
              },
              child: Card(
                child: ListTile(
                  title: Center(child: Text(museum.name)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12),
                      Text(
                        'Description: ${museum.description}',
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Location: ${museum.location}',
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Ticket Price: ${museum.price}',
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
