 import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
 
 class CounterPage extends StatefulWidget {
    
   const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          const Text(
            'Contador Statefull',
            style: TextStyle(fontSize: 20),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contador $_counter', 
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
                onPressed: () => setState(() => _counter-- ),
                text: 'Decremenentar', 
              ),
              CustomFlatButton(
                onPressed: () => setState(() => _counter++ ),
                text: 'Incrementar', 
              ),
            ],
          ),
          const Spacer()
        ],
      ) ,
     );
   }
}