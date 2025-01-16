// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_running_app/config/router/app_router.dart';
import 'package:smart_running_app/config/theme/app_theme.dart';
// import 'package:smart_running_app/firebase_options.dart';
import 'package:smart_running_app/presentation/provider/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

 main()  {//Future<void>async
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
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
        theme: appTheme
            .getTheme() //AppTheme(selectedColor: selectColor, isDarkMode: isDarkMode).getTheme(),
        );
  }
}
