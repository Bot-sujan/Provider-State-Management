import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorials/provider/auth_provider.dart';
import 'package:provider_tutorials/provider/count_provider.dart';
import 'package:provider_tutorials/provider/example_one_provider.dart';
import 'package:provider_tutorials/provider/favourite_provider.dart';
import 'package:provider_tutorials/provider/theme_changer_provider.dart';
import 'package:provider_tutorials/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),

       ],
      
      child:  Builder(
        builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: themeChanger.themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home:    const LoginScreen(),
    );
  
  }));
    }
      }



   

