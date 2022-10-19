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
          backgroundColor: Colors.red[900],
        ),
        body: Bodypage(),
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
    return TextField(controller: search ,);
  }
}