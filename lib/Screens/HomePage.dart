import 'package:flutter/material.dart';
import 'package:lab4/Screens/MemeScreen.dart';
import 'package:lab4/Screens/NewsScreen.dart';
import 'package:lab4/services/getNews.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NewsModel> news = [];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'News-Memes',
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'img/images/breakingnews.jpg',
                  scale: 4,
                )),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () async {
                print('Loading news');
                news = await showNews();
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsScreen(news)));
                  // showingNews = true;
                });
              },
              child: Text(
                'Read some News',

              ),
            ),
            SizedBox(
              height: 70,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'img/images/meme.jpg',
                  scale: 3,
                )),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () async {
                //memeUrl = await showMemes();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MemeScreen()));
              },
              child: Text(
                'Have Some Fun!',

              ),
            ),
          ],
        ),
      ),
    );
  }
}