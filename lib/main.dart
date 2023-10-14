import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Custom Dialog Demo"),
          backgroundColor: Colors.pinkAccent),
      body: Container(
        alignment: Alignment.center,
        child: OutlinedButton(
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return Dialog(
                    backgroundColor: Colors.white,
                    surfaceTintColor: Colors.transparent,
                    child: Stack(
                        alignment: Alignment.topCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(16, 40, 16, 16),
                            height: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Text("Custom Dialog",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: "Segoe UI",
                                        color: Colors.black)),
                                SizedBox(height: 12),
                                Text(
                                    "In Android, A dialog is a small window that prompts the user to make a decision, provide some additional information, and inform the user about some particular task",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Segoe UI",
                                        color: Colors.black)),
                                SizedBox(height: 20),
                                Center(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("close", style: TextStyle( color: Colors.white),)),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              top: -50,
                              child: CircleAvatar(
                                radius: 50,
                                child: Image.asset("assets/profile.png"),
                                backgroundColor: Colors.cyan,
                              ))
                        ]),
                  );
                });
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
