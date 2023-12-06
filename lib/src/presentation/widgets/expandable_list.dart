import 'package:flutter/material.dart';

import '../../domain/entity/ingredient.dart';

class ExpandableListView extends StatefulWidget {
  final List<Ingredient> items;

  const ExpandableListView({super.key, required this.items});

  @override
  _ExpandableListViewState createState() => _ExpandableListViewState();
}

class _ExpandableListViewState extends State<ExpandableListView> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _expanded ? widget.items.length : 3,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 2),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.lightGreen[100], // Change as needed
                borderRadius: BorderRadius.circular(5),
              ),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ), // Text Style
                  children: <TextSpan>[
                    TextSpan(text: '${widget.items[index].name} '),
                    TextSpan(
                      text: '(${widget.items[index].amount} units)',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        if (widget.items.length > 3) // Only show button if more than 3 items
          ElevatedButton(
            child: Text(_expanded ? "Show Less" : "Show More"),
            onPressed: () {
              setState(() {
                _expanded = !_expanded;
              });
            },
          ),
      ],
    );
  }
}
