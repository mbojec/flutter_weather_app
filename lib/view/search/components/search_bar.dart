import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/blocs/search_weather/cubit.dart';
import 'package:weather_app/blocs/search_weather/state_search.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/common/style.dart';
import 'package:weather_app/common/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/current/current_weather/current_weather.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';
import 'package:weather_app/models/search_item/search_item.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _controller;
  FocusNode _focusNode;

  double get _widthButtonCancel => _controller?.text?.isEmpty ?? true ? 0 : 50;

  @override
  void initState() {
    _controller = TextEditingController();
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchCubit, SearchState>(
      listener: (BuildContext context, SearchState state) {
        state.maybeWhen(
            success:
                (CurrentWeather currentWeather, DetailWeather detailWeather) {
              _controller.clear();
            },
            orElse: () {});
      },
      child: Container(
        height: Dimensions.searchBarHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kLightGrey,
          borderRadius: BorderRadius.circular(6),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.all(Dimensions.margin),
        child: Row(
          children: <Widget>[
            const Icon(
              Icons.search,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: searchBarTextFieldStyle(),
                controller: _controller,
                focusNode: _focusNode,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                onSubmitted: (String value) {
                  context
                      .read<SearchCubit>()
                      .search(searchItem: SearchItem(cityName: value));
                },
                onChanged: (String value) {
                  if (value.isEmpty || value.length == 1) {
                    setState(() {});
                  }
                },
              ),
            ),
            AnimatedContainer(
              width: _widthButtonCancel,
              duration: const Duration(milliseconds: 250),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                  });
                  _controller.clear();
                  final FocusScopeNode _currentFocus = FocusScope.of(context);
                  if (!_currentFocus.hasPrimaryFocus) {
                    _currentFocus.unfocus();
                  }
                  context.read<SearchCubit>().clear();
                },
                child: Center(
                  child: Text(
                    'Delete',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
    // return ;
  }
}
