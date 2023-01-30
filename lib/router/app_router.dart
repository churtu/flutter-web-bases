

import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class AppRouter{
  static final FluroRouter router = FluroRouter();
  
  static void configureRoutes(){

    router.define('/', 
      handler: counterHandler,
      transitionType: TransitionType.fadeIn
    );

    router.define('/statefull', 
      handler: counterHandler,
      transitionType: TransitionType.fadeIn
    );

    router.define('/statefull/:base', 
      handler: counterHandler,
      transitionType: TransitionType.fadeIn
    );

    router.define('/provider', 
      handler: providerHandler,
      transitionType: TransitionType.fadeIn
    );

    router.define('/dashboard/users/:userId/:roleId', 
      handler: dashboardUserHandler,
      transitionType: TransitionType.fadeIn
    );

    router.notFoundHandler = notFoundHandler;

  } 
}