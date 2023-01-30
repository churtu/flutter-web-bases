
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
 
 class CounterView extends StatefulWidget {
    
   const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int _counter = 0;
  
   @override
   Widget build(BuildContext context) {
     return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
      );
   }
}