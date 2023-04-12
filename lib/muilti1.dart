
import 'package:flutter/material.dart';

import 'multi.dart';

class Mutification extends StatefulWidget {
  const Mutification({Key? key}) : super(key: key);

  @override
  State<Mutification> createState() => _MutificationState();
}

class _MutificationState extends State<Mutification> {
  var txtkey = GlobalKey<FormState>();
  TextEditingController txtno =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(key: txtkey,child: SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Mutification Table"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: txtno,
            decoration: InputDecoration(
                hintText: "Enter the no"
            ),
          ),

          ElevatedButton(onPressed: () {
            String? no = txtno.text;
            int i= int.parse(no);
            Data d1 =Data(i: i);




            Navigator.pushNamed(context, 'next',arguments: d1);


          }, child: Text("Sumiit"))
        ],
      ),
    ),));
  }
}