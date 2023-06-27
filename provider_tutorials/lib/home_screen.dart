import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
        HomeScreen({super.key});

   int x = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Provider Tutorials', style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.teal,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
          child:  Center(child: Text(x.toString(), style: const TextStyle(fontSize: 50,))),
         )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          x++ ;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}