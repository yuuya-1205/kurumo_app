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

  final scrollController = ScrollController();

  //TODO: scrollBarが変な位置に出るので修正する
  return SizedBox(
    height: 100,
    child: Scrollbar(
      controller: scrollController,
      radius: const Radius.circular(16),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        controller: scrollController,
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
