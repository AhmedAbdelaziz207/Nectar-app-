import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:groceries_app/view/screens/app/groceries_app.dart';
import 'package:groceries_app/view_model/utils/constants/app_assets.dart';
import 'package:groceries_app/view_model/utils/router/app_router.dart';

/*
 to generate keys file
 flutter pub run easy_localization:generate -S assets/translations  -f keys -O lib/utils/constants -o locale_keys.g.dart


  /// go dive in =>  keys , equatable , factory

   */
main() async {



  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  AppRouter appRouter = AppRouter();


  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("en"),
        Locale("ar"),
      ],
      fallbackLocale: const Locale("en"),
      path: AppAssets.translations,
      child: NectarApp(appRouter: appRouter,),
  ),);
}
