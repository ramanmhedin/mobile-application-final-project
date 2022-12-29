class Book {
  static List<Map<String, dynamic>> allBooks = [
    {
      'name': 'Veronika Decides to Die',
      'sales': 200000,
      'author': 'Paulo Coelho',
      'publish_date': '1998-09-01'
    },
    {
      'name': 'Eleven Minutes',
      'sales': 300000,
      'author': 'Paulo Coelho',
      'publish_date': '2003-01-01'
    },
    {
      'name': 'The Devil and Miss Prym',
      'sales': 400000,
      'author': 'Paulo Coelho',
      'publish_date': '2000-01-01'
    },
    {
      'name': 'By the River Piedra I Sat Down and Wept',
      'sales': 500000,
      'author': 'Paulo Coelho',
      'publish_date': '1994-01-01'
    },
    {
      'name': 'The Winner Stands Alone',
      'sales': 600000,
      'author': 'Paulo Coelho',
      'publish_date': '2008-01-01'
    },
    {
      'name': 'The Great Gatsby',
      'sales': 200000,
      'author': 'F. Scott Fitzgerald',
      'publish_date': '1925-04-10'
    },
    {
      'name': 'Moby-Dick',
      'sales': 100000,
      'author': 'Herman Melville',
      'publish_date': '1851-10-18'
    },
    {
      'name': 'Pride and Prejudice',
      'sales': 300000,
      'author': 'Jane Austen',
      'publish_date': '1813-01-28'
    },
    {
      'name': 'To Kill a Mockingbird',
      'sales': 400000,
      'author': 'Harper Lee',
      'publish_date': '1960-07-11'
    },
    {
      'name': 'The Hunger Games',
      'sales': 600000,
      'author': 'Suzanne Collins',
      'publish_date': '2008-09-14'
    },
    {
      'name': 'The Da Vinci Code',
      'sales': 700000,
      'author': 'Dan Brown',
      'publish_date': '2003-03-18'
    },
    {
      'name': 'Harry Potter and the Goblet of Fire',
      'sales': 800000,
      'author': 'J.K. Rowling',
      'publish_date': '2000-07-08'
    },
    {
      'name': 'The Kite Runner',
      'sales': 900000,
      'author': 'Khaled Hosseini',
      'publish_date': '2003-05-29'
    },
    {
      'name': 'The Road',
      'sales': 100000,
      'author': 'Cormac McCarthy',
      'publish_date': '2006-09-26'
    },
    {
      'name': 'The Four Winds',
      'sales': 200000,
      'author': 'Kristin Hannah',
      'publish_date': '2021-01-05'
    },
    {
      'name': 'Project Hail Mary',
      'sales': 300000,
      'author': 'Andy Weir',
      'publish_date': '2021-05-04'
    },
    {
      'name': 'The Push',
      'sales': 400000,
      'author': 'Ashley Audrain',
      'publish_date': '2021-01-19'
    },
    {
      'name': 'The Sanatorium',
      'sales': 500000,
      'author': 'Sarah Pearse',
      'publish_date': '2021-03-02'
    },
    {
      'name': 'A Court of Silver Flames',
      'sales': 600000,
      'author': 'Sarah J. Maas',
      'publish_date': '2021-02-16'
    }
  ];

  static List<Map<String, dynamic>> getNewBooks() {
    var currentYear = DateTime.now().year;
    List<Map<String, dynamic>> lastYearBooks = [];

    for (var book in allBooks) {
      var publishYear = DateTime.parse(book['publish_date']).year;
      if (publishYear >= currentYear - 3) {
        lastYearBooks.add(book);
      }
    }

    return lastYearBooks;
  }

  static List<Map<String, dynamic>> getAuthor() {
    List<Map<String, dynamic>> author = [];
    Set<String> names = {};

    allBooks.forEach((element) {
      names.add(element["author"].toString());
    });

    names.forEach((nameset) {
      numberofbooks(nameset);
      Map<String, dynamic> a = {
        'name': nameset,
        'number of books': numberofbooks(nameset),
      };
      author.add(a);
    });

    return author;
  }

  static int numberofbooks(String name) {
    int num = 0;
    allBooks.forEach((element) {
      if (element["author"].toString() == name) {
        num++;
      }
    });
    return num;
  }
}
