import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample_counter_app/screens/first_screen.dart';

import 'Counterprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [
        ChangeNotifierProvider(create: (context)=> Counterprovider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          buttonTheme: ButtonThemeData(buttonColor: Colors.blueAccent),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: AppBarTheme(backgroundColor: Colors.blueAccent)
        ),
        home: const FirstScreen(),
      ),
    );
  }
}

