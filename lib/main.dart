import 'package:flutter/material.dart';
import 'package:smart_running_app/config/router/app_router.dart';
import 'package:smart_running_app/config/theme/app_theme.dart';
import 'package:smart_running_app/presentation/provider/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final bool isDarkMode = ref.watch(isDarkModeProvider);
    // final int selectColor = ref.watch(selectColorProvider);

 final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme() //AppTheme(selectedColor: selectColor, isDarkMode: isDarkMode).getTheme(),
    );
  }
}
