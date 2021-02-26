import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/search_history/cubit.dart';
import 'package:weather_app/blocs/search_history/state_history.dart';
import 'package:weather_app/blocs/search_weather/cubit.dart';
import 'package:weather_app/common/style.dart';
import 'package:weather_app/common/theme.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/models/search_item/search_item.dart';

class SearchHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(Dimensions.margin),
          child: const Text('Search history'),
        ),
        const Divider(),
        const SizedBox(
          height: 8.0,
        ),
        Expanded(
          child: BlocBuilder<SearchHistoryCubit, SearchHistoryState>(
              builder: (BuildContext context, SearchHistoryState state) {
            return state.maybeWhen(
                success: (List<SearchItem> searchHistory) {
                  if (searchHistory.isEmpty) {
                    return Center(
                      child: Text(
                        'Your search history is empty',
                        style: TextStyle(
                          color: kDarkGrey,
                        ),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: searchHistory.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: kLightGrey,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          margin: const EdgeInsets.symmetric(
                              horizontal: Dimensions.margin, vertical: 4.0),
                          child: ListTile(
                            onTap: () {
                              context.read<SearchCubit>().search(
                                  searchItem: searchHistory[index]);
                            },
                            title: Text(
                              searchHistory[index].cityName,
                              style: TextStyle(color: kDarkGrey),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
                error: (String error) => Center(
                      child: Text(
                        error,
                        style: errorMsgTextStyle(),
                      ),
                    ),
                orElse: () => Container());
          }),
        )
      ],
    );
  }
}
