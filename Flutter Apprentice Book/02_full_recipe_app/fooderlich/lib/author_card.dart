import 'circle_image.dart';
import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: CircleImage(
              imageProvider: widget.imageProvider,
              imageRadius: 28,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 2),
              Text(
                widget.authorName,
                style: FooderlichTheme.lightTextTheme.displayMedium,
              ),
              Text(
                widget.title,
                style: FooderlichTheme.lightTextTheme.displaySmall,
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
              iconSize: 30,
              color: Colors.red[400],
              onPressed: () {
                setState(() => _isFavorited = !_isFavorited);
              },
            ),
          )
        ],
      ),
    );
  }
}
