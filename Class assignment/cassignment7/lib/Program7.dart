//Create a screen in which add 5 network images horizontally with size
//(width: 150, height: 300) and make scrollable.

import 'package:flutter/material.dart';

class Program7 extends StatelessWidget {
  const Program7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("program7"),
      ),
      body: Center(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.network(
                  "https://feeds.abplive.com/onecms/images/uploaded-images/2023/02/26/5c40a2f3af97eb1f5976268f2ebc18081677418271999635_original.jpg?impolicy=abp_cdn&imwidth=650",
                  height: 300,
                  width: 150,
                ),
                Image.network(
                  "https://static.toiimg.com/photo/48679865.cms",
                  height: 300,
                  width: 169,
                ),
                Image.network(
                  "https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2021/01/14101943/New-Featured-1-3.jpg?tr=w-480,f-jpg,pr-true",
                  height: 300,
                  width: 235,
                ),
                Image.network(
                  "https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2021/01/14101943/New-Featured-1-3.jpg?tr=w-480,f-jpg,pr-true",
                  height: 300,
                  width: 235,
                ),
                Image.network(
                  "https://harstuff-travel.org/wp-content/uploads/2014/06/LRM_EXPORT_20180804_080533.jpg",
                  height: 300,
                  width: 170,
                ),
              ],
            )),
      ),
    );
  }
}