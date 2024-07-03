import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/themes/light_mode.dart';
import 'package:groceries_app/themes/night_mode.dart';

import '../../../view_model/utils/constants/routes.dart';
import '../../../view_model/utils/router/app_router.dart';
class NectarApp extends StatelessWidget {
  const NectarApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          debugShowCheckedModeBanner: false,
          onGenerateRoute : appRouter.generateRoute ,
          initialRoute: Routes.splash ,
          theme: LightTheme.lightTheme ,
          darkTheme: NightMode.nightTheme ,
        );

      },
    );
  }
}
