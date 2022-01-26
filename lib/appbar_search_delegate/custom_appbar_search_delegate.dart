import 'package:flutter/material.dart';

class CustomAppbarSearchDelegate extends SearchDelegate {
  List<String> dataSet = ["Java", "Dart", "Python", "C++", "Javascript"];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchedResult = [];
    for (String language in dataSet) {
      if (language.toLowerCase().contains(query.toLowerCase())) {
        matchedResult.add(language);
      }
    }

    return ListView.builder(
        itemCount: matchedResult.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(matchedResult[index]),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchedResult = [];
    for (String language in dataSet) {
      if (language.toLowerCase().contains(query.toLowerCase())) {
        matchedResult.add(language);
      }
    }

    return ListView.builder(
        itemCount: matchedResult.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(matchedResult[index]),
          );
        });
  }
}
