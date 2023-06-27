import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorials/provider/count_provider.dart';



class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Subscribe'),
       ),
       body:  Center(
        child: Consumer<CountProvider>(builder: (context, value, child) {
           return Text(value.count.toString(), 
                style: const TextStyle(fontSize: 50),);
        }),
       ),
       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
         countProvider.setCount();
        },
        child: const Icon(Icons.add),
       ),
    );
  }
}