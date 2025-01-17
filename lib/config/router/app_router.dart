import 'package:go_router/go_router.dart';
import 'package:smart_running_app/presentation/screens/screens.dart';

import '../../presentation/screens/home/home_screen.dart';
// import '../../presentation/screens/screens.dart';
/// The route configuration.
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
      GoRoute(
      path: '/general',
      name: GeneralScreen.name,
      builder: (context, state) => const GeneralScreen(),
    ),
    GoRoute(
      path: '/Runningtechnique',
      name: RunningtechniqueScreen.name,
      builder: (context, state) => const RunningtechniqueScreen(),
    ),

  ],
);
