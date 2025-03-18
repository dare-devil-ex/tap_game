import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
      
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.blueAccent,
              child: Center(
                child: Container(
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(202, 255, 255, 255),
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Text(
                    "START"
                  ),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.redAccent,
              child: Center(
                child: Container(
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(202, 255, 255, 255),
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Text(
                    "START"
                  ),
                ),
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}