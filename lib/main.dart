import 'package:flutter/material.dart';
import 'package:provider_academia_flutter/change_notfier/change_page.dart';
import 'package:provider_academia_flutter/change_notfier/controller.dart';
import 'package:provider_academia_flutter/provider/provider_page.dart';
import 'package:provider/provider.dart';
import 'package:provider_academia_flutter/provider/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(//import provider.dart
            create: (_) {
          return UserModel(
              bithDate: '10.04.1993',
              imgAvatar:
                  'https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg',
              name: 'Diogo');
        } //aqui nesse metodo retorna o objeto que eu quero
            ),
        ChangeNotifierProvider(create: (_) => ProviderController()),
      ],
      child: MaterialApp(
        title: 'Provider',
        theme: ThemeData(),
        routes: {
          '/provider': (_) => const ProviderPage(),
          '/change': (_) => const ChangeNotfierPage(),
        },
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/provider');
                        },
                        child: const Text('Provider')),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/change');
                        },
                        child: const Text('Change')),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
