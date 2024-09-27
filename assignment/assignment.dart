class Book {

  String title;
  String author;
  int publicationYear;
  int pagesRead = 0;
  static int totalBooks = 0;

  Book(this.title, this.author, this.publicationYear) {
    totalBooks++;
  }

  void read(int pages) {
    if (pages > 0) {
      pagesRead += pages;
    }
  }

  int getPagesRead(){
    return pagesRead;
  }

  String getTitle(){
    return title;
  }

  String getAuthor(){
    return author;
  }

  int getPublicationYear(){
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  Book book1 = Book('Around the World in Eighty Days', 'Jules Verne', 1872);
  Book book2 = Book('1984', 'George Orwell', 1949);
  Book book3 = Book('Thinking, Fast and Slow', 'David Kahneman', 2011);

  book1.read(50);
  book2.read(100);
  book3.read(75);

  List<Book> books = [book1, book2, book3];
  for (var book in books) {
    print('Title: ${book.getTitle()}');
    print('Author: ${book.getAuthor()}');
    print('Publication Year: ${book.getPublicationYear()}');
    print('Pages Read: ${book.getPagesRead()}');
    print('Book Age: ${book.getBookAge()} years');
    print('--------------');
  }

  print('Total Books Created: ${Book.totalBooks}');

}