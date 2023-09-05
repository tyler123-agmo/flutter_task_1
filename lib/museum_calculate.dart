import 'package:flutter/material.dart';
import 'package:flutter_task_1/museum_model.dart';

class MuseumCalculate extends StatelessWidget {
  final Museum museum;

  MuseumCalculate({required this.museum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(museum.name),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                museum.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Text(
                museum.price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('Elderly:'),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Select',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('Adult:'),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Select',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('Child:'),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Select',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('Service Tax:'),
                  ),
                  Container(
                    width: 60.0,
                    child: Expanded(
                      flex: 2,
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: '6%',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text('Total price:'),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: 'RM',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Calculate'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
