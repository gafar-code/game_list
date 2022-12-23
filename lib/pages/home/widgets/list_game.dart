part of '../home_page.dart';

class HomeListGame extends StatelessWidget {
  final HomeBloc bloc;
  const HomeListGame({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PagedListView.separated(
        pagingController: bloc.pagingController,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (_, Game game, int index) => CustomGameCard(game: game),
          noItemsFoundIndicatorBuilder: _noItemsFoundIndicator,
          newPageProgressIndicatorBuilder: _newPageProgressIndicator,
          noMoreItemsIndicatorBuilder: _noMoreItemsIndicator,
        ),
        separatorBuilder: _separator,
      ),
    );
  }

  Widget _noMoreItemsIndicator(context){
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 100),
      child: Text(
        "Data Not Found :(",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _noItemsFoundIndicator(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: const [
          Text(
            "Oops!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 24,
            ),
          ),
          Text(
            "Data Not Found :(",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _newPageProgressIndicator(context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Center(child: CircularProgressIndicator()),
    );
  }

  Widget _separator(context, index) {
    return const Divider(
      thickness: .8,
      color: AppColor.secondryColor,
    );
  }
}
