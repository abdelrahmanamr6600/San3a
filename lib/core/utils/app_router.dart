
import 'package:go_router/go_router.dart';
import 'package:sana_app/features/login/presentation/ui/LoginScreen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginScreen(),
    ),
  ]
);