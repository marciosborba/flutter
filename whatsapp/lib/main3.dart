import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Home.dart';

Future main() async {

  runApp(MyApp());

  final FirebaseApp app = await FirebaseApp.configure(


    name: 'Teste',
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
    timestampsInSnapshotsEnabled: true,
  );



}


