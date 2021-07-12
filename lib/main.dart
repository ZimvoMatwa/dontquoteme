import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: quoteList(),
  ));
}

class quoteList extends StatefulWidget {
  const quoteList({Key? key}) : super(key: key);

  @override
  _quoteListState createState() => _quoteListState();
}

class _quoteListState extends State<quoteList> {
  List<Quotes> quotes = [
    Quotes(author: "Pewdiepie", text: "Be a pizza, everyone loves pizza"),
    Quotes(author: "Gloria Borger", text: "pew pew pew"),
    Quotes(author: "Felix", text: "Skrata du, flora du...mannnneeee!!!")
  ]; //study map() function

  // Widget quoteTemp(quote) {
  //   return quoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => quoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
