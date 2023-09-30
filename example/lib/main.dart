import 'package:flutter/material.dart';
import 'package:initials_avatar/initials_avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Initials Avatar',
      theme: ThemeData(        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Initials Avatar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,        
        title: Text(widget.title),
      ),
      body: const Center(        
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Sizing'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InitialsAvatar(name: 'Joe Bloggs'),
                InitialsAvatar(name: 'Jane Doe', size: 30,),
                InitialsAvatar(name: 'John Smith Esq', size: 40,),
                InitialsAvatar(name: 'Frodo', size: 50,),
              ],
            ),
            Text('Custom colors'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InitialsAvatar(name: 'Joe Bloggs', backgroundColor: Colors.pinkAccent,),
                InitialsAvatar(name: 'Jane Doe', size: 30, textColor: Colors.white,),
                InitialsAvatar(name: 'John Smith Esq', size: 40, backgroundColor: Colors.blueAccent, textLightenFactor: 90,),
                InitialsAvatar(name: 'Frodo', size: 50, textLightenFactor: 20,),
              ],
            ),
            Text('Custom scaling'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InitialsAvatar(name: 'Joe Bloggs'),
                InitialsAvatar(name: 'Jane Doe', size: 30, textScaleFactor: 0.5),
                InitialsAvatar(name: 'John Smith Esq', size: 40, textScaleFactor: 0.6),
                InitialsAvatar(name: 'Frodo', size: 50, textScaleFactor: 1.4),
              ],
            )            
          ],
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
