import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/bloc/profile_bloc/profile_bloc.dart';
import 'package:flutter_application_1/presentation/screens/profile_screen.dart';
import 'package:flutter_application_1/service_locator.dart'
    as dependency_injection;
import 'package:flutter_application_1/presentation/widgets/review_modal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl_standalone.dart';
import 'package:url_strategy/url_strategy.dart';
import 'presentation/routes/app_routes.gr.dart';
import 'service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependency_injection.setup();
  setPathUrlStrategy();
  findSystemLocale().then((_) => runApp(const App()));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    final appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileBloc>(
            create: (context) => getIt<ProfileBloc>()..add(ProfileOpenEvent())),
      ],
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(
          navigatorObservers: () => [],
        ),
        routeInformationProvider: appRouter.routeInfoProvider(),
        routeInformationParser: appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
