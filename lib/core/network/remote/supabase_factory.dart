import 'package:supabase_flutter/supabase_flutter.dart';
import 'api_constants.dart';


class SupabaseFactory {
  SupabaseFactory._();

  static Future<void> init() async {
    await Supabase.initialize(
      url: ApiConstants.supabaseUrl,
      publishableKey: ApiConstants.supabasePublishableKey,
    );
  }

  static SupabaseClient get client =>
      Supabase.instance.client;
}