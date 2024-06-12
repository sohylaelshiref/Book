// ignore_for_file: avoid_print

class Book {
  Book({this.title, this.author, this.numberOfPages});
  String? title;
  String? author;
  int? numberOfPages;

  void displayinfo() {
    print(
        'Title: $title \nAuthor: $author \nNumber of pages= $numberOfPages');
  }
}

class Novel extends Book {
  Novel(String title, String author, int numberOfPages, {this.gener})
      : super(title: title, author: author, numberOfPages: numberOfPages);
  String? gener;

  @override
  void displayinfo() {
    super.displayinfo();
    print('Gener: $gener');
  }
}