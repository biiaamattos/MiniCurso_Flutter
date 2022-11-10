import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SomaKK',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Soma'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final avatar = const CircleAvatar(
    backgroundImage: NetworkImage(
        "https://www.oversodoinverso.com.br/wp-content/uploads/2020/08/gato-triste-variacao-1.png"),
    radius: 120,
  );

  final nome = const Text(
    'As Branquelas',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );

  final botaoTelefone = IconButton(
    color: Colors.teal,
    icon: const Icon(Icons.phone),
    onPressed: () {
      launchUrl(Uri(scheme: "tel", path: '1435-3256'));
    },
  );

  final botaoEmail = IconButton(
    color: Colors.teal,
    icon: const Icon(Icons.mail),
    onPressed: () {
       launchUrl(Uri(scheme: "mailto", path: "biahmattos290@gmail.com"));
    },
  );

  final botaoSMS = IconButton(
    color: Colors.teal,
    icon: const Icon(Icons.sms),
    onPressed: () {
        launchUrl(Uri(scheme: "sms", path: "100101100"));
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            'Curso de Flutter',
            style: TextStyle(color: Colors.black, fontSize: 35),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            avatar,
            nome,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [botaoTelefone, botaoSMS, botaoEmail],
            ),
          ],
        ));
  }
}
