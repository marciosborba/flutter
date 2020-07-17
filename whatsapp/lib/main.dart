import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


Future main() async {

  runApp(MyApp());

  final FirebaseApp app = await FirebaseApp.configure(


    name: 'whatsapp',
    options: new FirebaseOptions(

      googleAppID: "1:1013546821636:android:282bfbd47085cbd6d52d51",
      gcmSenderID: '1013546821636',
      apiKey: 'AIzaSyAMr5BZQfB2FZXTycEaN-ccxBvDQzJ6ydo',
      projectID: 'whatsapp-flutter-app',
      storageBucket: 'whatsapp-flutter-app.appspot.com',
      clientID: '1013546821636-4vll7mjnhlcpt1njcbrc11tvdlb6tqd4.apps.googleusercontent.com',
      bundleID: 'com.example.whatsapp',
    ),
  );
  var firestore = new Firestore(app: app);
  firestore.settings(
    persistenceEnabled: true,
    //timestampsInSnapshotsEnabled : true,
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   CollectionReference userRef = Firestore.instance.collection('Users').reference();
  

  void _incrementCounter() {
    var novoUsuario = {
      'nome' : 'João',
      'sobrenome' : 'Pereira',
      'endereço' : 'Rua Brasil',
      'numero' : '1500',
      'telefones' : {
        'principal' : '47 4500-1200',
        'segundario' : '47 4500-1500',

      }
    };
    userRef.add(novoUsuario);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(      
        backgroundColor: Colors.blue,
        title: Text('teste de app'),
      ),
      body: Center(   
        child: Column(    
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'proximo',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}

