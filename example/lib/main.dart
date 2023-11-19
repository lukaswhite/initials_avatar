import 'package:flutter/material.dart';
import 'package:initials_avatar/initials_avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
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
      body: const SingleChildScrollView(
        child: Center(        
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,),
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
            Divider(),
            SizedBox(height: 20,),
            Text('Square / border radius'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InitialsAvatar(name: 'Joe Bloggs', shape: InitialsAvatarShape.square,),
                InitialsAvatar(name: 'Jane Doe', shape: InitialsAvatarShape.square, size: 30, borderRadius: 10.0,),
                InitialsAvatar(name: 'John Smith Esq', shape: InitialsAvatarShape.square, size: 40, borderRadius: 20.0,),
                InitialsAvatar(name: 'Frodo', shape: InitialsAvatarShape.square, size: 50, borderRadius: 30.0,),
              ],
            ),
            Divider(),
            SizedBox(height: 20,),
            Text('Custom colors'),            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InitialsAvatar(name: 'Joe Bloggs', backgroundColor: Colors.pinkAccent,),
                InitialsAvatar(name: 'Jane Doe', size: 30, textColor: Colors.white,),
                InitialsAvatar(name: 'John Smith Esq', size: 40, backgroundColor: Colors.blueAccent, textContrastFactor: 90,),
                InitialsAvatar(name: 'Frodo', size: 50, colors: [
                  Colors.amber,
                  Colors.cyan,
                  Colors.brown,
                  Colors.pinkAccent
                ],),
              ],
            ),
            Divider(),
            SizedBox(height: 20,),
            Text('Darken'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InitialsAvatar(name: 'Joe Bloggs', backgroundColor: Colors.pinkAccent, textMode: InitialsAvatarTextMode.darken, textContrastFactor: 30,),
                InitialsAvatar(name: 'Jane Doe', size: 30, textMode: InitialsAvatarTextMode.darken, textContrastFactor: 20,),
                InitialsAvatar(name: 'John Smith Esq', size: 40, backgroundColor: Colors.blueAccent, textMode: InitialsAvatarTextMode.darken, textContrastFactor: 30,),
                InitialsAvatar(name: 'Frodo', size: 50, colors: [
                  Colors.amber,
                  Colors.cyan,
                  Colors.brown,
                  Colors.pinkAccent
                ], textMode: InitialsAvatarTextMode.darken, textContrastFactor: 40,),
              ],
            ),
            Divider(),
            SizedBox(height: 20,),
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
      ),
    ));
  }
}
