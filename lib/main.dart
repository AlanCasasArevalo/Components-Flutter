import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: [
        const Locale('en', 'US'), // American English
        const Locale('he', 'IL'), // Israeli Hebrew
        const Locale('es', 'ES'), // Español
      ],
      title: 'Componentes',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplications(),
      onGenerateRoute: getDefaultRouteApplications(),
    );
  }
}