import 'package:flashorant/screens/info_page.dart';
import 'package:flashorant/screens/result_page.dart';
import 'package:flashorant/utils/fav_map.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var chosenMap;
  var chosenAgent;
  var chosenGun;
  var gunList = [
    'Classic',
    'Shorty',
    'Frenzy',
    'Ghost',
    'Sherrif',
    'Stinger',
    'Spectre',
    'Bucky',
    'Judge',
    'Bulldog',
    'Guardian',
    'Phantom',
    'Vandal',
    'Marshall',
    'Operator',
    'Ares',
    'Odin'
  ];
  var agentList = [
    'Astra',
    'Breach',
    'Brimstone',
    'Cypher',
    'Jett',
    'Kay/O',
    'Killjoy',
    'Omen',
    'Phoenix',
    'Raze',
    'Reyna',
    'Sage',
    'Skye',
    'Sova',
    'Viper',
    'Yoru'
  ];
  var mapList = [
    'Ascent',
    'Bind',
    'Breeze',
    'Haven',
    'Icebox',
    'Split',
  ];
  surveyResults() {
    print("$chosenMap $chosenAgent,$chosenGun");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultScreen()),
    );
  }

  info() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InfoScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: ElevatedButton(
          onPressed: info,
          child: Text("?"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xffA50002)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                "Please select your favourite map, agent and gun to complete the survey."),
            FavDrop<String>(
              value: chosenMap,
              tittle: "Favourite Map",
              list: mapList,
              selectionString: "Select a map",
              onChanged: (newValue) {
                setState(() {
                  chosenMap = newValue;
                });
              },
            ),
            FavDrop<String>(
              value: chosenAgent,
              tittle: "Favourite Agent",
              list: agentList,
              selectionString: "Select an agent",
              onChanged: (newValue) {
                setState(() {
                  chosenAgent = newValue;
                });
              },
            ),
            FavDrop<String>(
              value: chosenGun,
              tittle: "Favourite Gun",
              list: gunList,
              selectionString: "Select a gun",
              onChanged: (newValue) {
                setState(() {
                  chosenGun = newValue;
                });
              },
            ),
            ElevatedButton(
              onPressed: surveyResults,
              child: Text("Finish"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xffdc3d4b)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
