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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const EvenNumbersList(),
    );
  }
}

class EvenNumbersList extends StatelessWidget {
  const EvenNumbersList({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> evenNumbers = [];
    for (int i = 2; i <= 100; i += 2) {
      evenNumbers.add(i);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          'Even Numbers (1 - 100)',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(evenNumbers.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0), // Adds spacing between items
                child: Text(
                  '${evenNumbers[index]}',
                  style: const TextStyle(fontSize: 16),
                ),
              );
            },
          ),
        ),
      ),
    );

  }
}
