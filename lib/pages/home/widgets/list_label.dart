part of '../home_page.dart';

class HomeListLabel extends StatelessWidget {
  final HomeBloc bloc;
  final String? query;
  const HomeListLabel({super.key, required this.bloc, required this.query});

  void _clearQuery() => bloc.add(const HomeEventStarted());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
      child: Helper.isEmpty(query) ? _buildWithoutQuery() : _buildWithQuery(),
    );
  }

  Text _buildWithoutQuery() {
    return const Text(
      "New Released",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }

  Row _buildWithQuery() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Result For :",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        MaterialButton(
          padding: const EdgeInsets.fromLTRB(18, 6, 8, 6),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          color: AppTheme.secondryColor,
          onPressed: _clearQuery,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '"${query!}"',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 6),
              SvgPicture.asset(
                closeIcon,
                height: 28,
                width: 28,
              )
            ],
          ),
        ),
      ],
    );
  }
}
