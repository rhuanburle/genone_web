import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';

class RegisterUserPage extends StatelessWidget {
  const RegisterUserPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: widthMedia > 1280 ? 1280 : widthMedia,
          child: Column(
            children: [
              Text(
                'Para prosseguir, por favor preencha os campos abaixo para finalzar o cadastro:',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'RobotoMono',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome',
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
