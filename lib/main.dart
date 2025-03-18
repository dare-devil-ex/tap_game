import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
      
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.blueAccent,
              child: Center(
                child: MaterialButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage()));
                },
                color: const Color.fromARGB(202, 255, 255, 255),
                height: 100,
                minWidth: 100,
                shape: CircleBorder(),
                child: Text(
                  "START"
                ),)
              ),
            ),

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.redAccent,
              child: Center(
                child: MaterialButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage()));
                },
                color: const Color.fromARGB(202, 255, 255, 255),
                height: 100,
                minWidth: 100,
                shape: CircleBorder(),
                child: Text(
                  "START"
                ),)
              ),
            ),
      
          ],
        ),
      );
  }
}


class GamePage extends StatelessWidget{
  const GamePage({super.key});

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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("PLAYER B", style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("50", style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
            ),
      
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.redAccent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("PLAYER A", style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("50", style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
            ),
      
      
          ],
        ),
      ),
    );
  }
}