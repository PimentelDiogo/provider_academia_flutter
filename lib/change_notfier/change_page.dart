import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_academia_flutter/change_notfier/controller.dart';
class ChangeNotfierPage extends StatefulWidget {
  const ChangeNotfierPage({Key? key}) : super(key: key);

  @override
  State<ChangeNotfierPage> createState() => _ChangeNotfierPageState();
}

class _ChangeNotfierPageState extends State<ChangeNotfierPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(Duration(seconds: 2));
      context.read<ProviderController>().mudarDados();
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text ('Change'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ProviderController>(
                  builder:(_,controller,__){
                    return CircleAvatar(
                      backgroundImage: NetworkImage(controller.imgAvatar),
                      radius: 60,
                    );
                  }),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<ProviderController>(
                      builder:(_,controller,__){
                        return Text(controller.name);
                      }),
                  Consumer<ProviderController>(
                      builder:(_,controller,__){
                        return Text('(${controller.bithDate})');
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
