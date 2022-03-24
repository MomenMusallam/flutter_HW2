import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

TextStyle textStyle = const TextStyle(
    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16);
TextStyle textStyle2 = const TextStyle(
    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16);
EdgeInsets padding = const EdgeInsets.only(left: 20, top: 20);

class _State extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? Scaffold(
                backgroundColor: Colors.red,
                appBar: AppBar(
                  elevation: 0.0,
                  iconTheme: const IconThemeData(color: Colors.black),
                  title: const Text("SECOND ASSIGNMENT"),
                  backgroundColor: Colors.purple,
                  titleTextStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                drawer: Drawer(
                    elevation: 0.0,
                    backgroundColor: Colors.black.withOpacity(0.1),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 80),
                          child: Text(
                            "FIRST ELEMENT",
                            style: textStyle,
                          ),
                        ),
                        Padding(
                          padding: padding,
                          child: Text(
                            "SECOND ELEMENT",
                            style: textStyle,
                          ),
                        ),
                        Padding(
                          padding: padding,
                          child: Text(
                            "THIRD ELEMENT",
                            style: textStyle,
                          ),
                        ),
                        Padding(
                          padding: padding,
                          child: Text(
                            "FOURTH ELEMENT",
                            style: textStyle,
                          ),
                        ),
                        Padding(
                          padding: padding,
                          child: Text(
                            "FIFTH ELEMENT",
                            style: textStyle,
                          ),
                        ),
                      ],
                    )),
              )
            : Scaffold(
                appBar: AppBar(
                  elevation: 0.0,
                  title: const Text("SECOND ASSIGNMENT"),
                  backgroundColor: Colors.purple,
                  titleTextStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.red,
                body: Container(
                  color: Colors.white,
                  width: 380,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Text(
                          "FIRST ELEMENT",
                          style: textStyle2,
                        ),
                      ),
                      Padding(
                        padding: padding,
                        child: Text(
                          "SECOND ELEMENT",
                          style: textStyle2,
                        ),
                      ),
                      Padding(
                        padding: padding,
                        child: Text(
                          "THIRD ELEMENT",
                          style: textStyle2,
                        ),
                      ),
                      Padding(
                        padding: padding,
                        child: Text(
                          "FOURTH ELEMENT",
                          style: textStyle2,
                        ),
                      ),
                      Padding(
                        padding: padding,
                        child: Text(
                          "FIFTH ELEMENT",
                          style: textStyle2,
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
