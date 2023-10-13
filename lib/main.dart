import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_provider2/provider/slider_provider.dart';
import 'package:slider_provider2/screens/slider_example_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SliderProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SliderExampleTwo(),
      ),
    );
//multi provider example
    //return MultiProvider(
    //providers: [
    //example
    //ChangeNotifierProvider(create: (_)=>ProviderClassOne()),
    //ChangeNotifierProvider(create: (_)=>ProviderClassTwo()),
    //ChangeNotifierProvider(create: (_)=>ProviderClassThree()),
    //ChangeNotifierProvider(create: (_)=>ProviderClassFour()),
    //   ],
    // );
  }
}
