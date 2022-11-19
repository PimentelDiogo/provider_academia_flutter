import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_academia_flutter/provider/user_model.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context); // o user model ta sendo escultando inteiro aqui!
    var imgAvatar = context.select<UserModel, String>((userModel) => userModel.imgAvatar);//nesse metodo busco apenas o objeto especifico!!
    return Scaffold(
      appBar: AppBar(title: const Text('Provider'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundImage: NetworkImage(user.imgAvatar),radius: 60,),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(user.name),
                  Text('(${user.bithDate})')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
