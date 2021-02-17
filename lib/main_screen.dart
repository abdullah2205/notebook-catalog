import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'model/notebook_data.dart';

class MainScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Notebook Catalog'),
            ),
            body: ListView(
                children: notebookDataList.map((notebook) {
                    return FlatButton(
                        onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return DetailScreen(notebook: notebook);
                            }));
                        },
                        child: Container(
                            margin: const EdgeInsets.only(top: 15, bottom: 5),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Column(
                                    children: [
                                        Container(
                                            child: Column(
                                                children: [
                                                    ClipRRect(
                                                        borderRadius: BorderRadius.circular(15),
                                                        child: Image.asset(notebook.image),
                                                    ),
                                                    Container(
                                                        padding: const EdgeInsets.only(top: 10),
                                                        child: Column(
                                                            children: [
                                                                Text(
                                                                    notebook.type,
                                                                    style: TextStyle(
                                                                        fontSize: 20,
                                                                        fontWeight: FontWeight.bold,
                                                                    ),
                                                                ),
                                                            ],
                                                        ),
                                                    ),
                                                    Container(
                                                        padding: const EdgeInsets.all(10),
                                                        child: Column(
                                                            children: [
                                                                Text(
                                                                    notebook.price,
                                                                    style: TextStyle(
                                                                        fontSize: 20,
                                                                        fontWeight: FontWeight.bold,
                                                                        color: Colors.blue,
                                                                    ),
                                                                )
                                                            ],
                                                        ),
                                                    ),
                                                ]
                                            )
                                        ),
                                    ],
                                ),
                            ),
                        )
                    );
                }).toList(),
            )
        );
    }
}