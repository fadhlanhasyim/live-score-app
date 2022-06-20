class FootballMatches {
  final String homeTeam;
  final String awayTeam;
  final String homeLogo;
  final String awayLogo;
  final int homeGoal;
  final int awayGoal;
  final String venue;

  FootballMatches(
      {required this.homeTeam,
      required this.awayTeam,
      required this.homeLogo,
      required this.awayLogo,
      required this.homeGoal,
      required this.awayGoal,
      required this.venue});
}

var matches = [
  FootballMatches(
      homeTeam: "Manchester United",
      awayTeam: "Tottenham Hotspur",
      homeLogo:
          "https://brandlogos.net/wp-content/uploads/2021/04/manchester-united-logo-200x200.png",
      awayLogo:
          "https://brandlogos.net/wp-content/uploads/2020/11/tottenham-hotspur-logo-200x200.png",
      homeGoal: 2,
      awayGoal: 2,
      venue: "Old Trafford"),
  FootballMatches(
      homeTeam: "Manchester City",
      awayTeam: "Chelsea",
      homeLogo:
          "https://brandlogos.net/wp-content/uploads/2017/05/manchester-city-fc-logo.png",
      awayLogo:
          "https://brandlogos.net/wp-content/uploads/2015/07/chelsea-fc-logo-preview-200x200.png",
      homeGoal: 5,
      awayGoal: 0,
      venue: "Etihad Stadium"),
  FootballMatches(
      homeTeam: "Manchester United",
      awayTeam: "Tottenham Hotspur",
      homeLogo:
          "https://brandlogos.net/wp-content/uploads/2021/04/manchester-united-logo-200x200.png",
      awayLogo:
          "https://brandlogos.net/wp-content/uploads/2020/11/tottenham-hotspur-logo-200x200.png",
      homeGoal: 2,
      awayGoal: 2,
      venue: "Old Trafford"),
  FootballMatches(
      homeTeam: "Manchester United",
      awayTeam: "Tottenham Hotspur",
      homeLogo:
          "https://brandlogos.net/wp-content/uploads/2021/04/manchester-united-logo-200x200.png",
      awayLogo:
          "https://brandlogos.net/wp-content/uploads/2020/11/tottenham-hotspur-logo-200x200.png",
      homeGoal: 2,
      awayGoal: 2,
      venue: "Old Trafford"),
];
