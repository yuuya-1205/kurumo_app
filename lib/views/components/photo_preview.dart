import 'package:flutter/material.dart';

Widget photoPreview(List<Image> images, BuildContext context) {
  void showImageDialog(Image image) {
    showDialog<void>(
      context: context,
      builder: (context) => GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: InteractiveViewer(
          child: Dialog(
            child: image,
          ),
        ),
      ),
    );
  }

  return SizedBox(
    height: 100,
    child: Scrollbar(
      radius: const Radius.circular(16),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => showImageDialog(
              images[index],
            ),
            child: images[index],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 4),
      ),
    ),
  );
}
