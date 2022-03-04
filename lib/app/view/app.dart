import 'package:cricket/app/app.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
        scaffoldBackgroundColor: CsColors.scaffold,
        progressIndicatorTheme: const ProgressIndicatorThemeData().copyWith(
          color: CsColors.primary,
        ),
      ),
      onGenerateRoute: AppRouter.onRouteGenerate,
      initialRoute: RoutePages.landing,
    );
  }
}
