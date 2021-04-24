// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

// Project imports:
import 'package:bmagrifa_books/config/routes/books_routes.dart';
import 'modules/screens/startup_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  // final CollectionReference books =
  //     FirebaseFirestore.instance.collection('books');

  // Future<DocumentSnapshot> getBooks() async {
  //   await Firebase.initializeApp();
  //   return await FirebaseFirestore.instance.collection('books');
  // }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.blue,
          // accentColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: const TextTheme()),
      getPages: books_routes,
      home: FutureBuilder<void>(
        future: Firebase.initializeApp(),
        // child: StartupPage()
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError) {
            return const Text('something went wrong');
          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return StartupPage();
          }

          // Otherwise, show something whilst waiting for initialization to complete
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
