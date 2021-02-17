import 'package:flutter/material.dart';
import 'package:notebook_catalog/model/notebook_model.dart';

class DetailScreen extends StatelessWidget {
    final NotebookData notebook;

    DetailScreen({@required this.notebook});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                        Stack(
                            children: <Widget>[
                                Image.asset(notebook.image),
                                SafeArea(
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                            IconButton(
                                                icon: Icon(Icons.arrow_back),
                                                onPressed: () {
                                                    Navigator.pop(context);
                                                },
                                            ),
                                            FavoriteButton(),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
                            child: Text(
                                notebook.type,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue
                                ),
                            )
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Text(
                                notebook.description,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16.0),
                            ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 20.0, bottom: 8.0),
                            child: Text(
                                'SPESIFIKASI :',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue
                                ),
                            ),
                        ),
                        Container(
                            margin: EdgeInsets.all(15.0),
                            child: Expanded(
                                child: Column(
                                    children: <Widget>[
                                        Row(
                                            children: [
                                                Expanded(
                                                    child:
                                                    Text(
                                                        'PRICE',
                                                        style:
                                                        TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.blue
                                                        ),
                                                    ),
                                                ),
                                                Text(
                                                    notebook.price,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        Row(
                                            children: [
                                                Expanded(
                                                    child:
                                                    Text(
                                                        'BRAND',
                                                        style:
                                                        TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.blue
                                                        ),
                                                    ),
                                                ),
                                                Text(
                                                    notebook.brand,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        Row(
                                            children: [
                                                Expanded(
                                                    child:
                                                    Text(
                                                        'OPERATING SYSTEM',
                                                        style:
                                                        TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.blue
                                                        ),
                                                    ),
                                                ),
                                                Text(
                                                    notebook.os,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        Row(
                                            children: [
                                                Expanded(
                                                    child:
                                                    Text(
                                                        'PROCESSOR',
                                                        style:
                                                        TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.blue
                                                        ),
                                                    ),
                                                ),
                                                Text(
                                                    notebook.processor,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        Row(
                                            children: [
                                                Expanded(
                                                    child:
                                                    Text(
                                                        'GRAPHICS',
                                                        style:
                                                        TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.blue
                                                        ),
                                                    ),
                                                ),
                                                Text(
                                                    notebook.graphics,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        Row(
                                            children: [
                                                Expanded(
                                                    child:
                                                    Text(
                                                        'DISPLAY',
                                                        style:
                                                        TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.blue
                                                        ),
                                                    ),
                                                ),
                                                Text(
                                                    notebook.display,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        Row(
                                            children: [
                                                Expanded(
                                                    child:
                                                    Text(
                                                        'MEMORY',
                                                        style:
                                                        TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.blue
                                                        ),
                                                    ),
                                                ),
                                                Text(
                                                    notebook.memory,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        Row(
                                            children: [
                                                Expanded(
                                                    child:
                                                    Text(
                                                        'STORAGE',
                                                        style:
                                                        TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.blue
                                                        ),
                                                    ),
                                                ),
                                                Text(
                                                    notebook.storage,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ],
                                ),
                            )
                        ),
                        Container(
                            height: 150,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: notebook.imageUrls.map((url) {
                                    return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.network(url),
                                        ),
                                    );
                                }).toList(),
                            ),
                        ),
                    ],
                ),
            )
        );
    }
}

class FavoriteButton extends StatefulWidget {
    @override
    _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
    bool isFavorite = false;

    @override
    Widget build(BuildContext context) {
        return IconButton(
            icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
            ),
            onPressed: () {
                setState(() {
                    isFavorite = !isFavorite;
                });
            },
        );
    }
}