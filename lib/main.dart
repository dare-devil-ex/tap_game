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


class GamePage extends StatefulWidget{
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  bool PageState = false;
  double blueCard = 0;
  double redCard = 0;
  int bCount = 0;
  int rCount = 0;

  @override
  Widget build(BuildContext context) {

    if (PageState == false) {
      blueCard = MediaQuery.of(context).size.height / 2;
      redCard = MediaQuery.of(context).size.height / 2;
      PageState = true;
    }

    if (blueCard < 35) {
      print("Red won");
    } else if ( redCard < 35 ) {
      print("Blue won");
    }

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [

            MaterialButton(

              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  bCount = bCount + 10;
                  blueCard = blueCard + 10;
                  redCard = redCard - 10;
                });
              },
              child: Container(
                  width: double.infinity,
                  height: blueCard,
                  color: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text("PLAYER B", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Text(bCount.toString(), style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
              ),
            ),
      
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  rCount = rCount + 10;
                  redCard = redCard + 10;
                  blueCard = blueCard - 10;
                });
              },
              child: Container(
                  width: double.infinity,
                  height: redCard,
                  color: Colors.redAccent,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text("PLAYER A", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Text(rCount.toString(), style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
              ),
            ),
      
      
          ],
        ),
      ),
    );
  }
}