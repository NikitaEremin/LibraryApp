import 'package:flutter/material.dart';
import '../../../theme/appTheme.dart';

class BookListCard extends StatelessWidget {
  BookListCard({super.key, required this.bookTitle});

  String bookTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 12,
        itemExtent: 130,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: Colors.white70,
                    border: Border.all(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 130,
                        width: 85,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image(
                                image: AssetImage(Covers.prestuplenieCover))),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(bookTitle,
                                  style: theme.textTheme.titleLarge),
                              Text(
                                'Автор',
                                style: theme.textTheme.titleLarge,
                              ),
                              const Text(
                                'Описание',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.white70,
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      Navigator.of(context).pushNamed('/book_page',arguments: index);
                    },
                  ),
                )
              ],
            ),
          );
        });
  }
}
