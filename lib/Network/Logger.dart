
class Logger {
  static void write(String text, {bool isError = false}) {

      Future.microtask(() => print('** $text. isError: [$isError]'));
  }

  static void writeLog(text) {

      Future.microtask(() => print(text));
  }

  static void logLongString(String s) {

      if (s == null || s.length <= 0) return;
      const int n = 1000;
      int startIndex = 0;
      int endIndex = n;
      while (startIndex < s.length) {
        if (endIndex > s.length) endIndex = s.length;
        print(s.substring(startIndex, endIndex));
        startIndex += n;
        endIndex = startIndex + n;
      }

  }

}
