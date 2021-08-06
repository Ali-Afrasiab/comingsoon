import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musafyr',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Musafyr'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/landing_page.jpg"),
            fit: BoxFit.cover,

          ),
        ),
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Stack(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  child: Text(

                    'Coming soon',
                    style: TextStyle(
color: CupertinoColors.white
    ,
                      fontSize: 70
                    ),
                  ),
                ),
              ),
Positioned(

left: 550,
                right: 550,
                top: 550,

                child: TextField(

                    decoration:  InputDecoration(
                      fillColor: CupertinoColors.white,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(

                        borderRadius: const BorderRadius.all(

                          const Radius.circular(20.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 0,
                          style: BorderStyle.solid,
                        ),
                      ),
                    )
                ),
              ),
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(left:550,top: 400),
                  child: ElevatedButton(onPressed: (){
                    AlertDialog alert = AlertDialog(
                      title: Text("Musafyr"),
                      content: Text("You will be notified of launch"),
                      actions: [

                      ],
                    );

                    // show the dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),

                            )
                        )
                    ),
                  child: Text('Notify me!',style: TextStyle(
                    color: CupertinoColors.white
                  ),),),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
