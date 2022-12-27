import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../models/search_posts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body:SafeArea(
        child: CustomScrollView(
          slivers: [
             SliverAppBar(
               toolbarHeight: 60,
               elevation: 0,
               backgroundColor: Colors.white,
               bottom: const PreferredSize(
                 preferredSize: Size.fromHeight(10.0),
                 child: Text(""),
               ),
               title: Container(
                 decoration: BoxDecoration(
                   color: Colors.grey.shade200,
                   border: Border.all(
                     color: Colors.grey.shade200,
                   ),
                   borderRadius: const BorderRadius.all(
                     Radius.circular(10),
                   ),
                 ),
                 child: CupertinoSearchTextField(
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                     borderRadius: const BorderRadius.all(
                       Radius.circular(10),
                     ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: GridView.custom(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: const [
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: searchPosts.length,
                      (context, index) => Image.asset(
                        searchPosts[index].image,
                        fit: BoxFit.cover,
                      ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
