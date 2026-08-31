import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:prism/core/cache/get_storage_helper.dart';
import 'package:prism/core/helpers/id.dart';
import 'package:prism/core/services/auth_deep_link_listner.dart';
import 'package:prism/prism.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await GetStorageHelper.initGetStorage();
   await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    publishableKey: dotenv.env['SUPABASE_KEY']);
    listenForPasswordRecovery();
   setup();
  runApp(DevicePreview(enabled: false, builder: (context) => const PrismApp()));
}
