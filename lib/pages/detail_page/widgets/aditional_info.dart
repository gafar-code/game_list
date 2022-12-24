part of '../detail_page.dart';

class DetailAditionalInfo extends StatelessWidget {
  final Game game;
  const DetailAditionalInfo({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              "Publishers",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          for (Developer dev in game.publishers!) ...[
            Text(
              dev.name!,
              style: const TextStyle(color: AppTheme.white8Color),
            ),
          ],
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 6),
            child: Text(
              "Platforms",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          for (PlatformElement dev in game.platforms!) ...[
            Text(
              dev.platform!.name!,
              style: const TextStyle(color: AppTheme.white8Color),
            ),
          ],
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 6),
            child: Text(
              "Developers",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          for (Developer dev in game.developers!) ...[
            Text(
              dev.name!,
              style: const TextStyle(color: AppTheme.white8Color),
            ),
          ],
        ],
      ),
    );
  }
}
