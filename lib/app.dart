
import 'package:flutter/material.dart';
import 'package:navigation_tut1/presentation/grid_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      initialRoute: "start",
      onGenerateRoute: (RouteSettings route) {
        switch (route.name) {
          default:
            return MaterialPageRoute(builder: (context) =>  GridPage());
        }
      },
    );
  }
}
