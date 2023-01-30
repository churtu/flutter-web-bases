import 'package:bases_web/locator.dart';
import 'package:bases_web/ui/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return (constraints.maxWidth > 576)
          ? const _MdMenu()
          : const _SmMenu();
      },
    );
  }
}

class _MdMenu extends StatelessWidget {
  const _MdMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            onPressed: () {
              locator<NavigationService>().navigateTo('/statefull');
            }, 
            text: 'Contador Stateful',
            color: Colors.black,
          ),
          const SizedBox( width: 10 ),
          CustomFlatButton(
            onPressed: () {
              locator<NavigationService>().navigateTo('/provider');
            }, 
            text: 'Contador con Provider',
            color: Colors.black,
          ),
          const SizedBox( width: 10 ),
          CustomFlatButton(
            onPressed: () {
              locator<NavigationService>().navigateTo('/no-existe');
            }, 
            text: 'Pagina 404',
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _SmMenu extends StatelessWidget {
  const _SmMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            onPressed: () {
              locator<NavigationService>().navigateTo('/statefull');
            }, 
            text: 'Contador Stateful',
            color: Colors.black,
          ),
          const SizedBox( width: 10 ),
          CustomFlatButton(
            onPressed: () {
              locator<NavigationService>().navigateTo('/provider');
            }, 
            text: 'Contador con Provider',
            color: Colors.black,
          ),
          const SizedBox( width: 10 ),
          CustomFlatButton(
            onPressed: () {
              locator<NavigationService>().navigateTo('/no-existe');
            }, 
            text: 'Pagina 404',
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}