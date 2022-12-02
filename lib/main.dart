import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorials/provider/auth_provider.dart';
import 'package:provider_tutorials/provider/count_provider.dart';
import 'package:provider_tutorials/provider/example_one_provider.dart';
import 'package:provider_tutorials/provider/favorite_provider.dart';
import 'package:provider_tutorials/provider/theme_changer_provider.dart';
import 'package:provider_tutorials/screens/dark_theme.dart';
import 'package:provider_tutorials/screens/favourite_screen/favourite_screen.dart';
import 'package:provider_tutorials/screens/favourite_screen/login.dart';
import 'package:provider_tutorials/screens/favourite_screen/value_notify_listner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ExampleOneProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouriteItemProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeChanger(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
          title: 'Flutter Provider Demo',
          themeMode: themeChanger.themeMode,
          theme:
              ThemeData(brightness: Brightness.light, primaryColor: Colors.red),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
        );
      }),
    );
  }
}
