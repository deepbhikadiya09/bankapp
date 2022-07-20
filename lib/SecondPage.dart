
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              Text(
                "Website",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              ElevatedButton(onPressed: (){launch("${data}");}, child: Text("Link"))
            ],
          ),
        ),
      ),
    );
  }
}
