import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Text("O Instituto Superior Técnico pretende contribuir para o desenvolvimento da sociedade, "
                "promovendo um Ensino Superior de excelência nas áreas de Arquitetura, Engenharia, "
                "Ciência e Tecnologia, desenvolvendo atividades de Investigação, Desenvolvimento e "
                "Inovação (ID&I) essenciais para ministrar um ensino ao nível dos mais elevados "
                "padrões internacionais."),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://invitro.com.br/wp-content/uploads/2023/02/Base_foto-de-capa.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              onTap: () async {
                const url = 'https://tecnico.ulisboa.pt/pt/';
                if (await canLaunchUrlString(url)) {
                  await launchUrlString(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Text(
              "A Infecção Sexualmente Transmissível possui a sigla IST, antigamente era denominada "
                  "como Doença sexualmente transmissível -DST. A modificação ocorreu porque destaca a "
                  "possibilidade de uma pessoa possuir e transmitir uma infecção, mesmo sem "
                  "sintomatologia.\n\nSão causadas por vírus, bactérias ou outros microrganismos. "
                  "Sua transmissão ocorre através do contato sexual, com uma pessoa infectada, "
                  "sem o uso de preservativo. Também pode acontecer durante "
                  "a gestação, parto ou amamentação e eventualmente por contato de mucosas ou pele não "
                  "íntegra com secreções corporais contaminadas.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 36),
        ],
      ),
    );
  }
}
