import 'package:flashorant/screens/info_page.dart';
import 'package:flashorant/screens/result_page.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
              "Please select your favourite map, agent and gun to complete the survey."),
          Column(
            children: [
              Text(
                "Favourite Map",
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton(
                icon: Icon(
                  Icons.arrow_downward_sharp,
                  color: Color(0xffdc3d4b),
                ),
                dropdownColor: Color(0xff292315),
                underline: Container(
                  color: Color(0xffdc3d4b),
                  height: 2,
                ),
                isExpanded: true,
                value: chosenMap,
                hint: Text(
                  "Select a map",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                items: [
                  DropdownMenuItem(
                      child: Text(
                        'Ascent',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 0),
                  DropdownMenuItem(
                      child: Text(
                        'Bind',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 1),
                  DropdownMenuItem(
                      child: Text(
                        'Breeze',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 2),
                  DropdownMenuItem(
                      child: Text(
                        'Haven',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 3),
                  DropdownMenuItem(
                      child: Text(
                        'Icebox',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 4),
                  DropdownMenuItem(
                      child: Text(
                        'Split',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 5),
                ],
                onChanged: (newValue) {
                  setState(() {
                    chosenMap = newValue;
                  });
                },
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Favourite Agent",
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton(
                icon: Icon(
                  Icons.arrow_downward_sharp,
                  color: Color(0xffdc3d4b),
                ),
                dropdownColor: Color(0xff292315),
                underline: Container(
                  color: Color(0xffdc3d4b),
                  height: 2,
                ),
                isExpanded: true,
                value: chosenAgent,
                hint: Text(
                  "Select an agent",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                items: [
                  DropdownMenuItem(
                      child: Text(
                        'Astra',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 0),
                  DropdownMenuItem(
                      child: Text(
                        'Breach',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 1),
                  DropdownMenuItem(
                      child: Text(
                        'Brimstone',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 2),
                  DropdownMenuItem(
                      child: Text(
                        'Cypher',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 3),
                  DropdownMenuItem(
                      child: Text(
                        'Jett',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 4),
                  DropdownMenuItem(
                      child: Text(
                        'Kay/O',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 5),
                  DropdownMenuItem(
                      child: Text(
                        'Killjoy',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 6),
                  DropdownMenuItem(
                      child: Text(
                        'Omen',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 7),
                  DropdownMenuItem(
                      child: Text(
                        'Phoenix',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 8),
                  DropdownMenuItem(
                      child: Text(
                        'Raze',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 9),
                  DropdownMenuItem(
                      child: Text(
                        'Reyna',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 10),
                  DropdownMenuItem(
                      child: Text(
                        'Sage',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 11),
                  DropdownMenuItem(
                      child: Text(
                        'Skye',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 12),
                  DropdownMenuItem(
                      child: Text(
                        'Sova',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 13),
                  DropdownMenuItem(
                      child: Text(
                        'Viper',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 14),
                  DropdownMenuItem(
                      child: Text(
                        'Yoru',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 15),
                ],
                onChanged: (newValue) {
                  setState(() {
                    chosenAgent = newValue;
                  });
                },
              ),
            ],
          ),
          Column(
            children: [
              Text("Favourite Gun", style: TextStyle(fontSize: 18)),
              DropdownButton(
                icon: Icon(
                  Icons.arrow_downward_sharp,
                  color: Color(0xffdc3d4b),
                ),
                dropdownColor: Color(0xff292315),
                underline: Container(
                  color: Color(0xffdc3d4b),
                  height: 2,
                ),
                isExpanded: true,
                value: chosenGun,
                hint: Text(
                  "Select a gun",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                items: [
                  DropdownMenuItem(
                      child: Text(
                        'Classic',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 0),
                  DropdownMenuItem(
                      child: Text(
                        'Shorty',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 1),
                  DropdownMenuItem(
                      child: Text(
                        'Frenzy',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 2),
                  DropdownMenuItem(
                      child: Text(
                        'Ghost',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 3),
                  DropdownMenuItem(
                      child: Text(
                        'Sherrif',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 4),
                  DropdownMenuItem(
                      child: Text(
                        'Stinger',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 5),
                  DropdownMenuItem(
                      child: Text(
                        'Spectre',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 6),
                  DropdownMenuItem(
                      child: Text(
                        'Bucky',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 7),
                  DropdownMenuItem(
                      child: Text(
                        'Judge',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 8),
                  DropdownMenuItem(
                      child: Text(
                        'Bulldog',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 9),
                  DropdownMenuItem(
                      child: Text(
                        'Guardian',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 10),
                  DropdownMenuItem(
                      child: Text(
                        'Phantom',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 11),
                  DropdownMenuItem(
                      child: Text(
                        'Vandal',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 12),
                  DropdownMenuItem(
                      child: Text(
                        'Marshall',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 13),
                  DropdownMenuItem(
                      child: Text(
                        'Operator',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 14),
                  DropdownMenuItem(
                      child: Text(
                        'Ares',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 15),
                  DropdownMenuItem(
                      child: Text(
                        'Odin',
                        style: TextStyle(color: Color(0xffE1DED8)),
                      ),
                      value: 16),
                ],
                onChanged: (newValue) {
                  setState(() {
                    chosenGun = newValue;
                  });
                },
              ),
            ],
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
    );
  }
}
