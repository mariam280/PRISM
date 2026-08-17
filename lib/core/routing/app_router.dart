// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/features/auth/ui/screens/signin_screen.dart';
import 'package:prism/features/auth/ui/screens/signup_screen.dart';
import 'package:prism/features/layout/ui/screens/layout_screen.dart';
import 'package:prism/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:prism/features/auth/ui/screens/forgot_password_screen.dart';
import 'package:prism/features/auth/ui/screens/welcome_screen.dart';
import 'package:prism/features/splash/ui/screens/splash_screen.dart';

abstract class AppRouter {
  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: AppRouters.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRouters.welcome,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: AppRouters.forgotPassword,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppRouters.layout,
        builder: (context, state) => const LayoutScreen()),
      GoRoute(
        path: AppRouters.onBoarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRouters.register,
        builder: (context, state) => const SignupScreen()),
      GoRoute(
        path: AppRouters.signIn,
        builder: (context, state) => const SigninScreen()),
      // GoRoute(
      //   path: AppRouters.blueprint,
      //   builder: (context, state) => const BlueprintScreen()),
      // GoRoute(
      //   path: AppRouters.setting,
      //   builder: (context, state) => const SettingScreen()),
    ],
  );
}
