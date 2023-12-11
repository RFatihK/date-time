import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey[600]),
        body: Container(
            color: Colors.amber,
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(bottom: 50.0),
                              child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: const Center(
                                      child: Text(
                                          'Date Time özelliklerine beraber bakalım!',
                                          textAlign: TextAlign.center)))),
                          ElevatedButton(
                              child: const Text("Tarih ve saat bilgisi nedir?",
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                var tarihSaat = date.toString();
                                Fluttertoast.showToast(
                                    msg: "$tarihSaat",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.grey,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              }),
                          ElevatedButton(
                              child: const Text("Hangi gün?",
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                var gun = DateFormat('EEEE').format(date);
                                Fluttertoast.showToast(
                                    msg: "$gun",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.grey,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              }),
                          ElevatedButton(
                              child: const Text("Tarih nedir?",
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                var tarih = DateFormat('EEEE, d MMM, yyyy')
                                    .format(date);
                                Fluttertoast.showToast(
                                    msg: "$tarih",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.grey[600],
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              }),
                          ElevatedButton(
                              child: const Text("Saat kaç?",
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                var saat = DateFormat('h:mm a').format(date);
                                print(saat);
                                Fluttertoast.showToast(
                                    msg: "$saat",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.grey[600],
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              })
                        ])))));
  }
}
