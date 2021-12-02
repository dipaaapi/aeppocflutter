
import 'package:aeppocflutter/style.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() => runApp(const Dashboard());

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  get actions => null;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      'Tab 1',
      'Tab 2',
    ];

    return MaterialApp(
      title: myName,
      theme: _buildShrineTheme(),
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(myName),
            automaticallyImplyLeading: false,
            // flexibleSpace: FloatingActionButton(
            //   onPressed: () {},
            //   child: const Text('click'),
            //   tooltip: 'redirect to other page',
            //   backgroundColor: shrineBackgroundWhite,
            // ),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                for (final tab in tabs) Tab(text: tab),
              ],
            ),
            actions[
              TextButton.icon(
              onPressed: () {
                // Respond to button press
              },
              icon: const Icon(Icons.add, size: 18),
              label: const Text("TEXT BUTTON"),
            ),] 
          ),
          body: TabBarView(
            children: [
              for (final tab in tabs)
                Center(
                  child: Text(tab),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
  @override
  Widget build() {
    return const MaterialApp(
      title: 'next page',
      home: Home(),
    );
  }

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    accentColor: shrineBrown900,
    primaryColor: primary,
    buttonColor: primary,
    scaffoldBackgroundColor: shrineBackgroundWhite,
    cardColor: shrineBackgroundWhite,
    textSelectionColor: primary,
    errorColor: shrineErrorRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: _shrineColorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
    indicatorColor: shrineBrown600,
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: shrineBrown900);
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
    caption: base.caption!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: defaultLetterSpacing,
    ),
    button: base.button!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: defaultLetterSpacing,
    ),
  )
      .apply(
    fontFamily: 'Rubik',
    displayColor: shrineBrown900,
    bodyColor: shrineBrown900,
  );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: primary,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

