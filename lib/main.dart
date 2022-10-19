import 'package:flutter/material.dart';

void main() {
  runApp(const navb());
}

// ignore: camel_case_types
class navb extends StatelessWidget {
  const navb({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp( 
      home: homepage(),
    );
  }
}

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GoogleApp'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const SingleChildScrollView(child: Bodypage()),
        backgroundColor: Colors.blueGrey[100],
      );
  }
}


class Bodypage extends StatefulWidget {
  const Bodypage({super.key});

  @override
  State<Bodypage> createState() => _BodypageState();
}

class _BodypageState extends State<Bodypage> {
  late TextEditingController search;
  @override
  void initState() {
    search = TextEditingController();
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    search.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:100),
      child: Center(child: Column(
        children:[const Image(width: 100,image: NetworkImage('https://cdn.pixabay.com/photo/2015/12/11/11/43/google-1088004_960_720.png')),
      Padding(
        padding: const EdgeInsets.only(top:30),
        child: Container(width: MediaQuery.of(context).size.width *0.9,child: TextField(controller: search,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: "Search",
          fillColor: Colors.white70),
        ),
        ),
      ),
      ]),
      ),
    );
  }
}