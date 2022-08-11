class LyricsModel {
  String number;
  String title;
  String speed;
  String firstnote;
  String firstverse;
  String secoundverse;
  String thirdverse;
  String fourthverse;
  String chorus;
  String chorusFinal;
  String author;

  LyricsModel({
    required this.author,
    required this.chorus,
    required this.chorusFinal,
    required this.firstnote,
    required this.firstverse,
    required this.fourthverse,
    required this.number,
    required this.secoundverse,
    required this.speed,
    required this.thirdverse,
    required this.title,
  });

  factory LyricsModel.fromMap(Map<String, dynamic> data) {
    return LyricsModel(
      author: data['author'] ?? '',
      chorus: data['chorus'] ?? '',
      chorusFinal: data['final'] ?? '',
      firstnote: data['firstnote'] ?? '',
      firstverse: data['firstverse'] ?? '',
      fourthverse: data['fourthverse'] ?? '',
      number: data['number'] ?? '',
      secoundverse: data['secoundverse'] ?? '',
      speed: data['speed'] ?? '',
      thirdverse: data['thirdverse'] ?? '',
      title: data['title'] ?? '',
    );
  }
}
