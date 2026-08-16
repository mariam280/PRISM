// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:prism/features/splash/ui/screens/splash_screen.dart';

abstract class AppRouter {
  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: AppRouters.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      // GoRoute(
      //   path: AppRouters.home,
      //   builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: AppRouters.onBoarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      // GoRoute(
      //   path: AppRouters.profile,
      //   builder: (context, state) => const ProfileScreen()),
      // GoRoute(
      //   path: AppRouters.register,
      //   builder: (context, state) => const RegisterScreen()),
      // GoRoute(
      //   path: AppRouters.signIn,
      //   builder: (context, state) => const SignInScreen()),
      // GoRoute(
      //   path: AppRouters.blueprint,
      //   builder: (context, state) => const BlueprintScreen()),
      // GoRoute(
      //   path: AppRouters.setting,
      //   builder: (context, state) => const SettingScreen()),
    ],
  );
}
