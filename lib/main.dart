// lib/main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme/app_theme.dart';
import 'navigation/app_router.dart';
import 'providers/app_providers.dart';
import 'storage/local_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = LocalDatabase();

  await database.initialize();

  runApp(
    PasswordFortressApp(
      database: database,
    ),
  );
}

class PasswordFortressApp extends StatelessWidget {
  final LocalDatabase database;

  const PasswordFortressApp({
    super.key,
    required this.database,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: MaterialApp(
        title: 'Password Fortress',

        debugShowCheckedModeBanner: false,

        theme: AppTheme.lightTheme,

        darkTheme: AppTheme.darkTheme,

        themeMode: ThemeMode.system,

        initialRoute: AppRouter.lock,

        onGenerateRoute:
            AppRouter.generateRoute,
      ),
    );
  }
}