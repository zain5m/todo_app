import 'package:colorize/colorize.dart';
import 'package:flutter/cupertino.dart';

class Dev {
  Dev._();

  static void console(List<dynamic> list) {
    // Colorize string = Colorize(
    //   "This is my string!",
    // );//   "Bold Italic Underline",
    //     //   front: Styles.RED,
    //     //   isBold: true,
    //     //   isItalic: true,
    //     //   isUnderline: true,
    //     //
    //     // );

    debugPrint(
      Colorize("First").bgLightRed().white().bold().italic().initial +
          Colorize(" ==> ").bgLightRed().white().bold().italic().initial +
          Colorize("********************************")
              .apply(Styles.BLACK)
              .bgWhite()
              .bold()
              .italic()
              .initial,
    );

    for (var element in list) {
      if (element is List) {
        for (int index = 0; index < element.length; index++) {
          debugPrint(
            Colorize("ITEM ${index.toString()}")
                    .apply(Styles.RED)
                    .bold()
                    .italic()
                    .initial +
                Colorize(" ==> ").apply(Styles.WHITE).bold().italic().initial +
                Colorize(element[index].toString())
                    .apply(Styles.GREEN)
                    .bold()
                    .italic()
                    .initial,
          );
        }
      } else {
        debugPrint(
          Colorize("ELEMENT").apply(Styles.RED).bold().italic().initial +
              Colorize(" ==> ").apply(Styles.WHITE).bold().italic().initial +
              Colorize(element.toString())
                  .apply(Styles.GREEN)
                  .bold()
                  .italic()
                  .initial,
        );
      }
    }
    // for (int i = 0; i >= list.length; i++) {}
    debugPrint(
      Colorize("END").bgLightRed().white().bold().italic().initial +
          Colorize(" ==> ").bgLightRed().white().bold().italic().initial +
          Colorize("**********************************")
              .apply(Styles.BLACK)
              .bgWhite()
              .bold()
              .italic()
              .initial,
    );
  }

  static void observerPrint(dynamic name, dynamic value, [dynamic additional]) {
    debugPrint(
      Colorize(name.toString())
              .apply(Styles.BLUE)
              .bgBlack()
              .bold()
              .italic()
              .initial +
          Colorize(" ==> ")
              .apply(Styles.BLUE)
              .bgBlack()
              .bold()
              .italic()
              .initial +
          Colorize(value.toString())
              .apply(Styles.YELLOW)
              .bgDarkGray()
              .bold()
              .italic()
              .initial,
    );
    if (additional != null) {
      // Extract currentState and nextState
      // String currentState = additional
      //     .toString()
      //     .split('currentState : ')[1]
      //     .split(', nextState: ')[0];

      // String nextState =
      //     additional.toString().split(', nextState: ')[1].split(' }')[0];
      //
      // // Initialize Colorize objects with respective colors
      // Colorize currentStateColorized = Colorize(currentState)..cyan();
      // Colorize nextStateColorized = Colorize(nextState)..magenta();
      //
      // // Print currentState and nextState with different colors
      // debugPrint(currentStateColorized.toString());
      // debugPrint(nextStateColorized.toString());
      // String currentState = additional
      //     .toString()
      //     .split('currentState: ')[1]
      //     .split(', nextState: ')[0];
      // String nextState =
      //     additional.toString().split(', nextState: ')[1].split(' }')[0];
      //
      // Colorize currentStateColorized = Colorize(currentState.toString()).cyan()
      //   ..initial;
      // Colorize nextStateColorized = Colorize(nextState.toString()).cyan()
      //   ..initial;
      // Colorize restColorized = Colorize(
      //     additional.toString().split('currentState: ')[0] +
      //         additional.toString().split(' }')[1])
      //   ..yellow();
      //
      // Colorize currentStateString = Colorize("currentState :  ".toString())
      //     .black()
      //     .bold()
      //     .italic()
      //     .bgLightCyan()
      //   ..initial;
      // Colorize nextStateString = Colorize("nextState :  ".toString())
      //     .black()
      //     .bold()
      //     .italic()
      //     .bgLightCyan()
      //   ..initial;
      // debugPrint(
      //     currentStateString.toString() + currentStateColorized.toString());
      // debugPrint(nextStateString.toString() + nextStateColorized.toString());
      // debugPrint(restColorized.toString());
    }
  }

  static void networkPrint(dynamic name, dynamic value) {
    debugPrint(
      Colorize(name.toString())
              .apply(Styles.BLACK)
              .bgWhite()
              .bold()
              .italic()
              .initial +
          Colorize(" ==> ")
              .apply(Styles.BLACK)
              .bgWhite()
              .bold()
              .italic()
              .initial +
          Colorize(value.toString())
              .apply(Styles.YELLOW)
              .bold()
              .italic()
              .initial,
    );
  }
}
