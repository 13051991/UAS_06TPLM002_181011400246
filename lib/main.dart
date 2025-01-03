import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.list),
                onPressed: (){
                  Navigator.pop(context);
                },
                ),
              title: const Text("Weather App"),
              centerTitle: true,
               actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
              backgroundColor: Color.fromARGB(187, 105, 104, 112),
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image/malam.jpg"), fit: BoxFit.cover),
              ),
              child: Center(
                child: MyWidget(           
                ),
              ),
            )));
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "JAKARTA",
          style: TextStyle(color: Colors.white, fontSize: 34),
        ),
        Text(
          "Friday, 3 January, 2025",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "29°c",
          style: TextStyle(
              color: Colors.white, fontSize: 74, fontWeight: FontWeight.bold),
        ),
        Text(
          "-------",
          style: TextStyle(color: Colors.white, fontSize: 54),
        ),
        Text(
          "Mostly Sunny",
          style: TextStyle(
              color: Colors.white, fontSize: 20),
        ),
        Text(
          "H:34°C/L:26°C",
          style: TextStyle(
              color: Colors.white, fontSize: 20),
        ),
        Icon(Icons.add_circle_outline, size: 40, color: Colors.white),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: <Widget>[
            Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.sunny, size: 40, color: Colors.white),
              Text(
                  "27°C",
                  style: TextStyle(
                  color: Colors.white, fontSize: 16),
                  ),
              Text(
                  "Saturday",
                  style: TextStyle(
                  color: Colors.white, fontSize: 16),
                  ),
            ],
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.thunderstorm, size: 40, color: Colors.white),
              Text(
                  "21°C",
                  style: TextStyle(
                  color: Colors.white, fontSize: 16),
                  ),
              Text(
                  "Sunday",
                  style: TextStyle(
                  color: Colors.white, fontSize: 16),
                  ),
            ],
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.cloudy_snowing, size: 40, color: Colors.white),
              Text(
                  "10°C",
                  style: TextStyle(
                  color: Colors.white, fontSize: 16),
                  ),
              Text(
                  "Monday",
                  style: TextStyle(
                  color: Colors.white, fontSize: 16),
                  ),
            ],
          ),
          ]
        )
      ],
      
    );
    
  }
}
