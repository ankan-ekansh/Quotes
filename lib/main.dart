import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  // List<String> quotes = [
  //   'Be yourself; everyone else is already taken',
  //   'I have nothing to declare except my genius',
  //   'The truth is rarely pure and never simple'
  // ];
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'), 
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple')
  ];

  // Widget quoteTemplate(quote){
  //   // return QuoteCard(quote: quote);
  //   return QuoteCard(quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        // children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        // children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        // children: quotes.map((quote) => QuoteCard(quote)).toList(),
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
              // print(quotes);
              // for(int i=0;i<quotes.length;i++){
              //   print("${quotes[i].text} - ${quotes[i].author}");
              // }
            });
          },
        )).toList(),
      ),
    );
  }
}

