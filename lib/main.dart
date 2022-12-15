import 'package:flutter/material.dart';
import 'splash.dart';

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
      title: 'Avance de Proyecto',
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('fondo.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: <String, WidgetBuilder>{
        "/inicio" :(BuildContext context)=> MyHomePage(title: "title"),
      },
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    //boton 1 servicios
    final button1 =  ElevatedButton(
      child: Text("Listview"),
      style: ElevatedButton.styleFrom(primary: Colors.deepOrange,onPrimary: Colors.black),
      onPressed: (){
        print("/servicios");
        Navigator.pushNamed(context, "/servicios");
      },
    );

    return Scaffold(
      //appBar: AppBar(),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image(
                image: NetworkImage('https://raw.githubusercontent.com/RommelOjeda/Movilesproyecto/main/Proyecto/assets/logoapp.png'),
                height: 140,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                button1,
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                button1,

              ],
            ),
          ],
        ),
      ),
    );
  }
}
