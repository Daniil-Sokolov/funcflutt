import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: view(),
        appBar: AppBar(title: txt("DanyaApp")),)
  ));
}
 

Function view = ()=> cont(
	cols(<Widget>[
		cols(
			<Widget>[
				txt('1'),
				txt('1'),
				txt('1'),
				txt('1'),
			]
		),
		inputTxt(),
		rows(
			<Widget>[
				txt('Daniil'),
				txt('Bob'),
				txt('Sam'),
				txt('Alice')
			],
		)
	])
);

Function cont = (Widget input)=> Container(
	padding: EdgeInsets.all(30),
	color: Colors.teal,
	child: input
);

Function txt = (String input)=> Text(
	input,
	textDirection: TextDirection.ltr
);

Function inputTxt = ()=> TextField(
	decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Введите текст",
        fillColor: Colors.white,
        filled: true
    ),
	style: TextStyle(
		fontSize: 22,
		color: Colors.black),
    maxLines: 10,
    minLines: 5
);


Function cols = (List<Widget> input)=> Column(
	textDirection: TextDirection.ltr,
	crossAxisAlignment: CrossAxisAlignment.center,
	mainAxisAlignment: MainAxisAlignment.spaceAround,
	//verticalDirection: VerticalDirection.up,
	textBaseline: TextBaseline.alphabetic,
	children: input,
);


Function rows = (List<Widget> input)=> Row(
	textDirection: TextDirection.ltr,
	crossAxisAlignment: CrossAxisAlignment.end,
	verticalDirection: VerticalDirection.down,
	mainAxisAlignment: MainAxisAlignment.spaceBetween,
	children: input,
);
