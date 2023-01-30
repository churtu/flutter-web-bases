import 'package:bases_web/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {
  final String query;
  const CounterProviderView({
    super.key, 
    required this.query
  });

  @override
   Widget build(BuildContext context) {
     return ChangeNotifierProvider(
      create: (context) => CounterProvider(query),
       child: const _CounterProviderBody(),
     );
   }
}

class _CounterProviderBody extends StatelessWidget {
  const _CounterProviderBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         const Spacer(),
         const Text(
           'Contador Provider',
           style: TextStyle(fontSize: 20),
         ),
        FittedBox(
           fit: BoxFit.contain,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Text(
               'Contador ${counterProvider.counter}', 
               style: const TextStyle(
                 fontSize: 80, 
                 fontWeight: FontWeight.bold
               )),
           ),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             CustomFlatButton(
               onPressed: () => counterProvider.decrement(),
               text: 'Decremenentar', 
             ),
             CustomFlatButton(
               onPressed: () => counterProvider.increment(),
               text: 'Incrementar', 
             ),
           ],
         ),
         const Spacer()
       ],
     );
  }
}