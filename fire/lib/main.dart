import 'package:fire/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  runApp(MyApp());

  /// ************* Para gravar dados no Firebase *****************

  /*  Firestore.instance
      .collection('mensagens')
      .document()
      .setData({'texto': 'Hello World!', 'from': 'Marcio', 'read': true}); */

  /// *********** Consultar os dados gerais no Firebase *****************

  /* QuerySnapshot snapshot =
      await Firestore.instance.collection('mensagens').getDocuments();
  snapshot.documents.forEach((d) {
    d.reference.updateData({'lido': false}); */

  /// print(d.data);
  /// print(d.documentID);

  /// ************* Consultar um dado específico no Firebase ****************

  DocumentSnapshot snapshot =
      await Firestore.instance.collection('mensagens').document('mes1').get();
  print(snapshot.data);

  /// ************* Atualizar dados gerais real-time *************************

  /* Firestore.instance.collection('mensagens').snapshots().listen((dados) {
    dados.documents.forEach((d) {
      print(d.data);
    });
  }); */

  /// ************* Atualizar um dado específico real-time ******************

  /* Firestore.instance
      .collection('mensagens')
      .document('0WJnBfLUj26HreC9EEuf')
      .snapshots()
      .listen((dados) {
    print(dados.data);
  }); */
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
      ),
      home: ChatScreen(),
    );
  }
}
