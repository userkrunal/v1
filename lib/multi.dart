
import 'package:flutter/material.dart';


class muti extends StatefulWidget {
  const muti({Key? key}) : super(key: key);

  @override
  State<muti> createState() => _mutiState();
}

class _mutiState extends State<muti> {

  @override
  Widget build(BuildContext context) {
    Data d1 = ModalRoute.of(context)!.settings.arguments as Data;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(("${d1.i}")),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return Text('${d1.i}*$index=${d1.i! * index}');
              },itemCount: 10+2-1,),
            )
          ],
        ),
      ),
    );
  }
}
class Data
{
  int? i;

  Data({this.i});
}