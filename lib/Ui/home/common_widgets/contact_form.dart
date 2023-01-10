import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/utils/app_images.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery.of(context).size.width;
    return Container(
      // height: 300,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column (
        children: [
          Row(
            children: [
              widthMedia > 1000 ?
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(AppImages.genone2Home),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
                  ),
                ),
              ) : Container(),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 500,
                        color: Colors.white,
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            labelText: 'Seu nome',
                          ),
                          ),
                        ),
                      const SizedBox(height: 10),
                      Container(
                        width: 500,
                        color: Colors.white,
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                            labelText: 'Seu e-mail',
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 500,
                        color: Colors.white,
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(),
                            labelText: 'Telefone',
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 500,
                        color: Colors.white,
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.edit_note_outlined),
                            border: OutlineInputBorder(),
                            labelText: 'Assunto',
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 500,
                        color: Colors.white,
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.message),
                            labelText: 'Sua mensagem',
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 5,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Enviar mensagem'),),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                       (widthMedia < 1000 && widthMedia > 750) || widthMedia > 1250 ?
                        const Text("GenOne Soluções em Biotecnologia") :
                        const Text("GenOne Soluções\nem Biotecnologia"),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.phone),
                        Text("Tel: (21) 3285-9105"),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.email),
                        Text(" Mensagem:", style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Text("Email: vendas@genone.com.br"),
                    const SizedBox(height: 200),
                  ],
                ),
              )
            ]
          ),
        ]
      )
    );
  }
}
