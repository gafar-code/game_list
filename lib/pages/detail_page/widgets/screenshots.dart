part of '../detail_page.dart';

class DetailScreenShots extends StatelessWidget {
  final List<ScreenShoot> screenShoots;
  const DetailScreenShots({super.key, required this.screenShoots});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        itemCount: screenShoots.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 2),
            child: ClipRect(
              child: CachedNetworkImage(imageUrl: screenShoots[index].image!),
            ),
          );
        },
      ),
    );
  }
}
