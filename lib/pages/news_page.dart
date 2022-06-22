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
        title: const Text("Football App"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: height / 80, left: height / 40, right: height / 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        style: TextStyle(
                            fontSize: height / 40, color: Colors.grey)),
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
                  color: Colors.grey.shade500,
                  child: const SaveButton(),
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
                      color: Colors.grey.shade500,
                      child: const SaveButton(),
                    )
                  ]),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text(
                    "Can Southampton\ndash Liverpool's\ntitle hopes?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: height / 40),
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
                    SizedBox(
                      width: width * 0.4,
                      child: Image.network(
                          "https://akcdn.detik.net.id/visual/2022/05/04/villlarreal-vs-liverpool-2_169.jpeg?w=650"),
                    ),
                    Container(
                      width: width / 10,
                      height: width / 10,
                      color: Colors.grey.shade500,
                      child: const SaveButton(),
                    )
                  ]),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text(
                    "Can Southampton\ndash Liverpool's\ntitle hopes?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: height / 40),
                  ),
                ],
              ),
              SizedBox(
                height: height / 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: width * 0.4,
                        child: Image.network(
                            "https://akcdn.detik.net.id/visual/2022/05/04/villlarreal-vs-liverpool-2_169.jpeg?w=650"),
                      ),
                      Container(
                        width: width / 10,
                        height: width / 10,
                        color: Colors.grey.shade500,
                        child: const SaveButton(),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text(
                    "Can Southampton\ndash Liverpool's\ntitle hopes?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: height / 40),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(height / 80),
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff650e51),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
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

class SaveButton extends StatefulWidget {
  const SaveButton({super.key});

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (() {
          setState(() {
            isSaved = !isSaved;
          });
        }),
        icon: Icon(
          isSaved ? Icons.bookmark : Icons.bookmark_border,
          color: Colors.black,
        ));
  }
}
