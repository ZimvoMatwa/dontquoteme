import 'package:flutter/material.dart';
import 'quotes.dart';

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
    Quotes(author: "Felix", text: "Skrata du, flora du...mannnneeee")
  ]; //research map() function

  Widget quoteTemp(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
    );
  }

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
        children: quotes.map((quote) => quoteTemp(quote)).toList(),
      ),
    );
  }
}
