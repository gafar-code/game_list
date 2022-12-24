part of '../detail_page.dart';

class DetailDescription extends StatelessWidget {
  final Game game;
  const DetailDescription({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Helper.isEmpty(game.description)
        ? const SizedBox()
        : Container(
            decoration: const BoxDecoration(border: Border(left: BorderSide(color: AppTheme.greenColor, width: .5))),
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Description",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Release date: ${DateFormat("MMMM, dd, yyyy").format(game.released!)}",
                  style: const TextStyle(
                    color: AppTheme.white8Color,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                ReadMoreText(
                  Bidi.stripHtmlIfNeeded(game.description!),
                  trimLines: 5,
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  textAlign: TextAlign.start,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Show less',
                  style: const TextStyle(
                    color: AppTheme.white9Color,
                    fontSize: 14,
                  ),
                  moreStyle: const TextStyle(
                    fontSize: 14,
                    color: AppTheme.greenColor,
                  ),
                  lessStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          );
  }
}
