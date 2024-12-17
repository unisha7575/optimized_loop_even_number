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
    /// This is the main optimized loop for generating even numbers
    for (int i = 2; i <= 100; i += 2) {
      evenNumbers.add(i);
    }

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.cyan.shade300,
        title: const Text(
          'Even Numbers (1 - 100)',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false, // Align title to start
        titleSpacing: 10,    // Removes extra spacing to make it start-aligned
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: evenNumbers.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 2,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.cyan.shade300,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  '${evenNumbers[index]}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
