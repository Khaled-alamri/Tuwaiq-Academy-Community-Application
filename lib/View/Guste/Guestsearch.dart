import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Controller/Search%20Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GuestSearchPage extends StatelessWidget {
  GuestSearchPage({super.key});
  SearchController searchController = Get.put(SearchController());


  bool isEx = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SearchPage"),
      ),
      body: ListView(children: [
        TextField(
          onChanged: (query) {
            searchController.searchFromeFirbase(query);
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a search term',
          ),
        ),
        GetBuilder<SearchController>(
          builder: (_) {
            if (searchController.searchResult.isEmpty) {
              return Container(
                  height: 50,
                  width: 50,
                  child: Center(
                      child: Text(
                    "No data Founde",
                    style: TextStyle(color: Colors.grey),
                  )));
            }

            return Container(
                height: 500,
                width: 500,
                color: Colors.amber,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(searchController.searchResult[index]["title"]);
                  },
                  itemCount: searchController.searchResult.length,
                ));
          },
        ),
      ]),
    );
  }
}