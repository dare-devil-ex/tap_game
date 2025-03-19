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

  bool pageState = false;
  double blueCard = 0;
  double redCard = 0;
  int bCount = 0;
  int rCount = 0;

  @override
  Widget build(BuildContext context) {

    if (pageState == false) {
      blueCard = MediaQuery.of(context).size.height / 2;
      redCard = MediaQuery.of(context).size.height / 2;
      pageState = true;
    }

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [

            MaterialButton(

              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  bCount = bCount + 5;
                  rCount = rCount - 2;
                  blueCard = blueCard + 20;
                  redCard = redCard - 20;
                  if (redCard < 55) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WonPage(bCount, "Player B won",Colors.blueAccent)));
                  }
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
                          color: Colors.red,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Text(bCount.toString(), style: TextStyle(
                        color: Colors.white,
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
                  rCount = rCount + 5;
                  bCount = bCount - 2;
                  redCard = redCard + 20;
                  blueCard = blueCard - 20;
                  if (blueCard < 55) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WonPage(rCount, "Player A won",Colors.redAccent)));
                  }
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
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Text(rCount.toString(), style: TextStyle(
                        color: Colors.white,
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



// ignore: must_be_immutable
class WonPage extends StatefulWidget {

  String title = "";
  Color bgColor;
  int score = 0;
  WonPage(this.score, this.title, this.bgColor, {super.key});

  @override
  State<WonPage> createState() => _WonPageState();
}

class _WonPageState extends State<WonPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: widget.bgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.score.toString(),
              style: TextStyle(
                    color: const Color.fromARGB(255, 35, 255, 116),
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),
              ),
              Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:25,
                    fontWeight: FontWeight.bold
                  ),
                ),
          
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    });
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                  color: Colors.deepPurpleAccent,
                  child: Text(
                  "RESTART",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
                )
          
              ],
            ),
        ),
        ),
    );
  }
}