import 'package:flutter/material.dart';
import 'dart:async';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {

  int count = 0;

@override
void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) { 
      count ++;
      setState(() {
        
      });
    });
  }

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Subscribe'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Center(child: Text(count.toString(), style: const TextStyle(fontSize: 50),)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
            count++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}