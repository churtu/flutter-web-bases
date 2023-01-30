
import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/not_found_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){

    switch (settings.name) {
      case '/statefull':
        return _fadeRoute(
          const CounterView(base: '5'),
          settings.name!
        );
      case '/provider':
        return _fadeRoute(
          const CounterProviderView(query: '0'),
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