
import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/not_found_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:bases_web/ui/pages/not_found_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){

    switch (settings.name) {
      case '/statefull':
        return _fadeRoute(
          const CounterView(),
          settings.name!
        );
      case '/provider':
        return _fadeRoute(
          const CounterProviderView(),
          settings.name!
        );
      default:
        return _fadeRoute(
          const NotFoundView(),
          '/404'
        ); 
    }
    
  } 

  static PageRoute _fadeRoute( Widget child, String routeName ){
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) => 
      kIsWeb 
        ? FadeTransition(
            opacity: animation,
            child: child,
          ) 
        : CupertinoPageTransition(
          primaryRouteAnimation: animation, 
          secondaryRouteAnimation: secondaryAnimation, 
          linearTransition: true,
          child: child
        ),
    );  
  }
}