

// Handlers
import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/not_found_view.dart';
import 'package:fluro/fluro.dart';

final Handler counterHandler = Handler(
    handlerFunc: (context, parameters) => CounterView(base: parameters['base']?.first ?? '5'),
  );


  final Handler providerHandler = Handler(
    handlerFunc: (context, parameters) => CounterProviderView(query: parameters['q']?.first ?? '0')
  );

  final Handler dashboardUserHandler = Handler(
    handlerFunc: (context, parameters){
      print(parameters);
      return const NotFoundView();
    }
  );

  // 404
  final Handler notFoundHandler = Handler(
    handlerFunc: (context, parameters) => const NotFoundView(),
  );