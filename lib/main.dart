void main() {
  // Put how many row you would like to have here
  int howManyRows = 7;
  writePine(howManyRows);
  writePineBar(howManyRows);
}

String closedSlash = '\\';
String enteredSlash = '/';
String enteredGap = '';
String internalGap = ' ';

String exernalAdditionalGap = '';
String internalAdditionalGap = '';
String barAdditionalGap = '';

String helpString = '                    ';

void increaseGaps(int index) {
  exernalAdditionalGap = helpString.substring(0, 10 - index);
  internalAdditionalGap = helpString.substring(0, index * 2);
}

void buitdAdditionalGap() {}

void writePine(int howMany) {
  if (howMany > 1) {
    for (int i = 0; i < howMany; i++) {
      increaseGaps(i);
      print(
          '$exernalAdditionalGap$enteredGap$enteredSlash$internalAdditionalGap$enteredGap$closedSlash');
    }
  } else {
    print('$enteredGap$enteredSlash$enteredGap$closedSlash');
  }
}

void writePineBar(int howManyRows) {
  if (howManyRows == 1) {
    print('||');
  } else {
    barAdditionalGap = helpString.substring(0, 10);
    print('$barAdditionalGap||');
  }
}
