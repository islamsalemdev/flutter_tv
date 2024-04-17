import 'package:flutter/material.dart';
import 'package:flutter_tv/next_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Color> colors = [
  Colors.deepOrange,
  Colors.pink,
  Colors.black,
  Colors.cyan,
  Colors.purple,
  Colors.yellow,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.grey,
  Colors.pink,
  Colors.black,
];

final url = Uri.parse('https://www.youtube.com/');
Future<void> _urlLauncher ()async{
   if(!await launchUrl(url)){
     throw'There is an error';
   }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          TextButton(onPressed: _urlLauncher, child: Text('Go to WebView'))
        ],
        title: const Text('Android TV '),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(
          12,
          (index) => InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      NextPage(pageColor: colors[index], pageCount: index),
                )),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: colors[index],
              ),
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
