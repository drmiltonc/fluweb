import 'package:fluro/fluro.dart';
import 'package:fluweb/router/admins_handlers.dart';
import 'package:fluweb/router/no_page_found_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static String rootRoute = '/';
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';
  static String dashboardRoute = '/dashboard';

  static void configureRoutes() {
    router.define(rootRoute, handler: AdminHandlers.login);
    router.define(loginRoute, handler: AdminHandlers.login);
    //router.define(registerRoute, handler: handler);

    router.notFoundHandler = NoPageFoundHanlders.noPageFound;
  }
}