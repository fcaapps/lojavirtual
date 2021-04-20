import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: avoid_void_async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // FirebaseFirestore.instance.collection('teste2').add({'teste2': 'teste2'});

  // FirebaseFirestore.instance.collection('pedidos').add(
  //   {'preco': 199.99, 'usuario': 'Fernando'}
  // );

  // FirebaseFirestore.instance.collection('pedidos').doc('#00001').set(
  //     {'usuario': 'Fernando Castro'}
  // );

  // FirebaseFirestore.instance.doc('pedidos/#00001').set(
  //     {'usuario': 'Fernando Castro'}
  // );
  //
  // FirebaseFirestore.instance.collection('pedidos').doc('#00001').update(
  //     {'usuario': 'Fernando Castro'}
  // );

  // DocumentSnapshot documento = await FirebaseFirestore.instance.collection('pedidos').doc('#00001').get();
  //
  // print(documento.data()['usuario']);

  // FirebaseFirestore.instance.collection('pedidos')
  //     .doc('#00001')
  //     .snapshots()`
  //     .listen((event) {
  //     print(event.data()['usuario']);
  // });

  // QuerySnapshot snapshot =
  //     await FirebaseFirestore.instance.collection('pedidos').get();

  // for (DocumentSnapshot document in snapshot.docs) {
  //   print(document.data());
  // }

  FirebaseFirestore.instance
      .collection('pedidos')
      .snapshots()
      .listen((snapshot) {
    for (DocumentSnapshot document in snapshot.docs) {
      print(document.data());
    }
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Material(
        child: Container(
          color: Colors.red,
          child: const Center(
            child: Text(
              'Testando',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
