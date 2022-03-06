import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: ()
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Merhaba")));
                }
                , child: Text("Snack Bar")),

            ElevatedButton(onPressed: ()
            {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Silmek istiyor musunuz?"),
                    action: SnackBarAction(
                      label: "Evet",
                      onPressed: ()
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Silindi")));
                      },
                    ),
                  ));
            }
                , child: Text("Snack Bar Action")),

            ElevatedButton(onPressed: ()
            {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("İnternet Bağlantısı Yok!", style: TextStyle(color: Colors.yellow, fontSize: 15),),
                    backgroundColor: Colors.deepPurpleAccent,
                    duration: Duration(seconds: 1),

                    action: SnackBarAction(
                      label: "Tekrar Dene",
                      textColor: Colors.green,
                      onPressed: ()
                      {
                        print('Tekrar denendi.');
                      },
                    ),
                  ));
            }
                , child: Text("İnternet Bağlantısı Yok!"))
          ],
        ),
      ),

    );
  }
}
