import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Football App"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: height / 80, left: height / 40, right: height / 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              ClipOval(
                child: Container(
                  width: width / 6,
                  child: Image.network(
                      "https://brandlogos.net/wp-content/uploads/2021/10/premier-league-logo.png"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Premier League",
                      style:
                          TextStyle(fontSize: height / 40, color: Colors.grey)),
                  Text(
                    "Daily News",
                    style: TextStyle(
                        fontSize: height / 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ]),
            SizedBox(
              height: height / 50,
            ),
            Row(
              children: [
                Text(
                  "🔥Trending",
                  style: TextStyle(
                      fontSize: height / 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width / 20,
                ),
                Text(
                  "24h Top News",
                  style: TextStyle(fontSize: height / 50, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: height / 50,
            ),
            Stack(children: [
              Container(
                child: Image.network(
                    "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltf4d8ac620085cad4/6282ba1d9154c305839009be/GettyImages-1240714366.jpg?quality=80&width=1000&format=pjpg&auto=webp"),
              ),
              Container(
                child: FavoriteButton(),
                color: Colors.grey.shade500,
              )
            ]),
            Padding(
              padding: EdgeInsets.only(top: height / 70),
              child: Text(
                "Arsenal defeat puts top-four spots in Spurs' hands",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: height / 35, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height / 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latest News",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: height / 35, fontWeight: FontWeight.bold),
                ),
                Text(
                  "More News",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: height / 60, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: height / 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    width: width * 0.4,
                    child: Image.network(
                        "https://akcdn.detik.net.id/visual/2022/05/04/villlarreal-vs-liverpool-2_169.jpeg?w=650"),
                  ),
                  Container(
                    width: width / 10,
                    height: width / 10,
                    child: FavoriteButton(),
                    color: Colors.grey.shade500,
                  )
                ]),
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  child: Text(
                    "Can Southampton\ndash Liverpool's\ntitle hopes?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: height / 40),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    width: width * 0.4,
                    child: Image.network(
                        "https://akcdn.detik.net.id/visual/2022/05/04/villlarreal-vs-liverpool-2_169.jpeg?w=650"),
                  ),
                  Container(
                    width: width / 10,
                    height: width / 10,
                    child: FavoriteButton(),
                    color: Colors.grey.shade500,
                  )
                ]),
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  child: Text(
                    "Can Southampton\ndash Liverpool's\ntitle hopes?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: height / 40),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    width: width * 0.4,
                    child: Image.network(
                        "https://akcdn.detik.net.id/visual/2022/05/04/villlarreal-vs-liverpool-2_169.jpeg?w=650"),
                  ),
                  Container(
                    width: width / 10,
                    height: width / 10,
                    child: FavoriteButton(),
                    color: Colors.grey.shade500,
                  )
                ]),
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  child: Text(
                    "Can Southampton\ndash Liverpool's\ntitle hopes?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: height / 40),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (() {
          setState(() {
            isFavorite = !isFavorite;
          });
        }),
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }
}
