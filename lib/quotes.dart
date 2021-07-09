class Quotes {
  late String text;
  late String author;

  // Quotes({required this.text, required this.author});
  Quotes({required String text, String? author}) { //{} inside the parameter allows to name parameters when calling
    this.text = text;
    this.author = author!;
  }
}

Quotes newQuotes = Quotes(text: 'be a pizza, everyone love pizza', author: 'Pewdiepie');