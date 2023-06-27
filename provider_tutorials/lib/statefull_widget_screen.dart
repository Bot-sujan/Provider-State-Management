import 'package:flutter/material.dart';

class StateflulWidget extends StatefulWidget {
  const StateflulWidget({super.key});

  @override
  State<StateflulWidget> createState() => _StateflulWidgetState();
}

class _StateflulWidgetState extends State<StateflulWidget> {


  int count = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Subscribe'),
      ),
      body:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
          child:  Center(child: Text(count.toString(), style: const TextStyle(fontSize: 50,))),
         )
        ],

        ),
         floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            setState(() {
              
            });

          },
          child: const Icon(Icons.add),
      ),
    );
  }
}