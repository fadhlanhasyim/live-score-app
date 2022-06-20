import 'package:flutter/material.dart';
import 'package:football_app/classes/football_matches.dart';
import 'package:football_app/pages/news_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final headerTable = ["Pos", "Club", "P", "GP", "Pts"];
    final manCity = ["1", "Man City", "37", "72", "90"];
    final liverpool = ["2", "Liverpool", "36", "65", "86"];
    final chelsea = ["3", "Chelsea", "36", "42", "70"];
    final spurs = ["4", "Tottenham", "37", "24", "68"];
    final arsenal = ["5", "Arsenal", "36", "11", "66"];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final listMatches = matches;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text("Welcome to",
                          style: TextStyle(
                              fontSize: height / 40, color: Colors.grey)),
                      Text(
                        "Premier League",
                        style: TextStyle(
                            fontSize: height / 30, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ]),
                ClipOval(
                  child: Container(
                    width: width / 9,
                    child: Image.network(
                        "https://www.pngitem.com/pimgs/m/514-5149286_profile-logo-hd-png-download.png"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height / 50,
            ),
            Text(
              "Matchday Live",
              style:
                  TextStyle(fontSize: height / 40, fontWeight: FontWeight.bold),
            ),
            Text(
              "Sunday, 15 May 2022",
              style: TextStyle(fontSize: height / 40),
            ),
            SizedBox(
              height: height / 50,
            ),
            Container(
              height: height / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: listMatches.map((e) {
                  return MatchCard(width: width, height: height, match: e);
                }).toList(),
              ),
            ),
            SizedBox(
              height: height / 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("League Table",
                    style: TextStyle(
                        fontSize: height / 40, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: height / 70,
            ),
            Table(
              border: TableBorder.symmetric(
                  inside: BorderSide(color: Colors.white),
                  outside: BorderSide(color: Colors.grey)),
              columnWidths: const {
                0: FractionColumnWidth(0.2),
                1: FractionColumnWidth(0.425),
                2: FractionColumnWidth(0.125),
                3: FractionColumnWidth(0.125),
                4: FractionColumnWidth(0.125),
              },
              children: [
                TableRow(
                  children: headerTable.map((e) {
                    return TableCell(
                      height: height,
                      text: e,
                      isHeader: true,
                    );
                  }).toList(),
                ),
                TableRow(
                  children: manCity.map((e) {
                    return TableCell(
                      height: height,
                      text: e,
                      isHeader: false,
                    );
                  }).toList(),
                ),
                TableRow(
                  children: liverpool.map((e) {
                    return TableCell(
                      height: height,
                      text: e,
                      isHeader: false,
                    );
                  }).toList(),
                ),
                TableRow(
                  children: chelsea.map((e) {
                    return TableCell(
                      height: height,
                      text: e,
                      isHeader: false,
                    );
                  }).toList(),
                ),
                TableRow(
                  children: spurs.map((e) {
                    return TableCell(
                      height: height,
                      text: e,
                      isHeader: false,
                    );
                  }).toList(),
                ),
                TableRow(
                  children: arsenal.map((e) {
                    return TableCell(
                      height: height,
                      text: e,
                      isHeader: false,
                    );
                  }).toList(),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(top: height / 80, right: width / 60),
              child: Text(
                "Full Table",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Text("Headline News",
                style: TextStyle(
                    fontSize: height / 40, fontWeight: FontWeight.bold)),
            SizedBox(
              height: height / 60,
            ),
            Container(
              child: Image.network(
                  "https://akcdn.detik.net.id/visual/2022/05/04/villlarreal-vs-liverpool-2_169.jpeg?w=650"),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 70),
              child: Text(
                "Can Southampton dash Liverpool's title hopes?",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: height / 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Center(
              child: Container(
                // width: width / 3,
                decoration: BoxDecoration(
                    color: Color(0xff650e51),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewsPage()));
                        },
                        icon: Icon(
                          Icons.newspaper,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class TableCell extends StatelessWidget {
  const TableCell({
    Key? key,
    required this.height,
    required this.text,
    required this.isHeader,
  }) : super(key: key);

  final double height;
  final String text;
  final bool isHeader;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      color: isHeader ? Color(0xff650e51) : Colors.white,
      child: Text(
        text,
        style: TextStyle(
            fontSize: height / 50,
            color: isHeader ? Colors.white : Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class MatchCard extends StatelessWidget {
  const MatchCard({
    Key? key,
    required this.width,
    required this.height,
    required this.match,
  }) : super(key: key);

  final double width;
  final double height;
  final FootballMatches match;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      child: Card(
        child: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 4),
            width: width / 2.1,
            color: Color(0xff340040),
            child: Column(
              children: [
                Text("Premier League",
                    style: TextStyle(
                        fontSize: height / 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Text("Week 16",
                    style: TextStyle(
                      fontSize: height / 50,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Container(
            width: width / 2.1,
            color: Color(0xff650e51),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: width / 6,
                        child: Image.network(match.homeLogo),
                      ),
                      SizedBox(
                        width: width / 50,
                      ),
                      Text(
                        "vs",
                        style: TextStyle(
                            fontSize: height / 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: width / 6,
                        child: Image.network(match.awayLogo),
                      ),
                    ]),
                Padding(
                  padding: EdgeInsets.all(height / 110),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(match.homeTeam,
                              style: TextStyle(
                                fontSize: height / 60,
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: height / 300,
                          ),
                          Text(match.awayTeam,
                              style: TextStyle(
                                  fontSize: height / 60, color: Colors.white)),
                          SizedBox(
                            height: height / 300,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width / 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(match.homeGoal.toString(),
                              style: TextStyle(
                                fontSize: height / 60,
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: height / 300,
                          ),
                          Text(match.awayGoal.toString(),
                              style: TextStyle(
                                fontSize: height / 60,
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: height / 300,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: width / 2.1,
              padding: EdgeInsets.symmetric(vertical: height / 100),
              color: Color(0xff340040),
              child: Text(
                match.venue,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
