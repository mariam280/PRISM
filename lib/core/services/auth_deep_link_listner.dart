import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:prism/core/routing/app_router.dart';
import 'package:prism/core/routing/app_routers.dart';

void listenForPasswordRecovery() {
  Supabase.instance.client.auth.onAuthStateChange.listen((data) {
    if (data.event == AuthChangeEvent.passwordRecovery) {
      AppRouter.goRouter.go(AppRouters.resetPassword);
    }
  });
}