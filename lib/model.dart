class Book {
  String type;
  String name;
  String publisher;
  DateTime date;
  String imgUrl;
  num score;
  num rating;
  String review;
  double height;
  Book(
      {required this.date,
      required this.height,
      required this.imgUrl,
      required this.name,
      required this.publisher,
      required this.rating,
      required this.review,
      required this.score,
      required this.type});
  static List<Book> generateBooks() {
    return [
      Book(
          date: DateTime(2019, 3, 23),
          height: 220,
          imgUrl: 'assets/images/book1.jpeg',
          name: 'This is the way',
          publisher: 'iStudio',
          score: 4.7,
          review:
              'I failed the first quarter of a class in school, so I made a fake report card. I did this every quarter that year. I forgot that they mail home the end year cards, and my mom got it before I could intercept....',
          rating: 892,
          type: 'History'),
      Book(
          date: DateTime(2020, 3, 23),
          height: 270,
          imgUrl: 'assets/images/book2.jpeg',
          name: 'Always forgive your enemies',
          publisher: 'iStudio',
          score: 4.7,
          review:
              'I failed the first quarter of a class in school, so I made a fake report card. I did this every quarter that year. I forgot that they mail home the end year cards, and my mom got it before I could intercept....',
          rating: 892,
          type: 'History'),
      Book(
          date: DateTime(2019, 3, 23),
          height: 240,
          imgUrl: 'assets/images/book3.jpeg',
          name: 'This is the way',
          publisher: 'iStudio',
          score: 4.7,
          review:
              'I failed the first quarter of a class in school, so I made a fake report card. I did this every quarter that year. I forgot that they mail home the end year cards, and my mom got it before I could intercept....',
          rating: 892,
          type: 'History'),
      Book(
          date: DateTime(2019, 3, 23),
          height: 240,
          imgUrl: 'assets/images/book4.jpeg',
          name: 'This is the way',
          publisher: 'iStudio',
          score: 4.7,
          review:
              'I failed the first quarter of a class in school, so I made a fake report card. I did this every quarter that year. I forgot that they mail home the end year cards, and my mom got it before I could intercept....',
          rating: 892,
          type: 'History'),
      Book(
          date: DateTime(2019, 3, 23),
          height: 240,
          imgUrl: 'assets/images/book5.jpeg',
          name: 'This is the way',
          publisher: 'iStudio',
          score: 4.7,
          review:
              'I failed the first quarter of a class in school, so I made a fake report card. I did this every quarter that year. I forgot that they mail home the end year cards, and my mom got it before I could intercept....',
          rating: 892,
          type: 'History'),
      Book(
          date: DateTime(2019, 3, 23),
          height: 240,
          imgUrl: 'assets/images/book6.jpeg',
          name: 'This is the way',
          publisher: 'iStudio',
          score: 4.7,
          review:
              'I failed the first quarter of a class in school, so I made a fake report card. I did this every quarter that year. I forgot that they mail home the end year cards, and my mom got it before I could intercept....',
          rating: 892,
          type: 'History'),
    ];
  }
}
