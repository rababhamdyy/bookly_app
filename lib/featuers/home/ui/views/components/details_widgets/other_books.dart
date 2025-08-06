import 'package:bookly_app/featuers/home/data/model/book_volume.dart';
import 'package:flutter/material.dart';

class OtherBooks extends StatelessWidget {
  final BookVolume? book;

  const OtherBooks({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child:
            book?.volumeInfo.imageLinks?.thumbnail != null
                ? Image.network(
                  book!.volumeInfo.imageLinks!.thumbnail,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (context, error, stackTrace) => _buildPlaceholder(),
                )
                : _buildPlaceholder(),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      color: Colors.grey[300],
      child: Icon(Icons.book, size: 30, color: Colors.grey[600]),
    );
  }
}
