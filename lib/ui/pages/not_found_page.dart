import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
   
  const NotFoundPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('404', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text('No se encontro la pagina', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            CustomFlatButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/statefull'), 
              text: 'Regresar'
            )
          ],
         ),
      ),
    );
  }
}