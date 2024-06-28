import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconly/iconly.dart';

class SearchWithSuggestion extends StatefulWidget {
  const SearchWithSuggestion({super.key});

  @override
  _SearchWithSuggestionState createState() => _SearchWithSuggestionState();
}

class _SearchWithSuggestionState extends State<SearchWithSuggestion> {
  final TextEditingController _filter = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  String _searchText = "";
  List<String> _suggestionList = [];

  final List<String> listData = [
    "Alfonzo Schuessler",
    "Lauralee Quintero",
    "Maryland Winkles",
    "Lorriane Mcdonough",
    "Nguyen Van A",
    // Thêm các dữ liệu khác
  ];

  _SearchWithSuggestionState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          _suggestionList = [];
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });

    _focusNode.addListener(() {
      setState(() {}); // Rebuild the widget when the focus changes
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_searchText.isNotEmpty) {
      _suggestionList = listData
          .where((element) => element.toLowerCase().startsWith(_searchText.toLowerCase()))
          .toList();
    }

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _filter,
            focusNode: _focusNode,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              prefixIcon: Icon(IconlyLight.search),
              hintText: 'Tìm kiếm...',
            ),
          ),
        ),
        if (_focusNode.hasFocus) // Only show the list when the TextField is focused
          Container(
            color: Colors.grey.shade200,
            width: MediaQuery.of(context).size.width,
            height: _suggestionList.length * 50.0,
            child: ListView.builder(
              itemCount: _suggestionList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _filter.text = _suggestionList[index];
                    _focusNode.unfocus();

                  },
                  child: Container(
                    height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration:  BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 30,),
                           const Icon(IconlyLight.search),
                          SizedBox(width: MediaQuery.of(context).size.width/4,),
                          Text(_suggestionList[index], style: const TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ))),
                );
              },
            ),
          ),
      ],
    );
  }
}