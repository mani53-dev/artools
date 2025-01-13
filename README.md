## ARTools

A Dart package that provides handy extensions and helper functions, for a smooth and efficient coding experience.

Visit [EXTENSIONS.md](https://github.com/mani53-dev/artools/blob/main/DOC_EXTENSION.md) for a complete list of all the available extensions.

## Types of Extensions
- Date Handling <br>
- String Utilities <br>
- List Enhancements <br>
- Tap Gestures <br>
- Color Conversion <br>
- Number Utilities <br>
- Utility Functions


## Getting started

Add dependency to your `pubspec.yaml` file & run pub get
```yaml
dependencies:
  artools: ^0.0.3+2
```

And import package into your class file

```dart
import 'package:artools/artools.dart';
```
## Here’s a quick preview of dart_extensions_pro
### String extension:

```dart
'hello😊'.containsEmoji(); // Checks if the string contains any type of emoji.
'A brown fox'.isAlphanumeric(); // Checks if the string contains only alphanumeric characters.
'jumps over the lazy dog'.words(); // Returns the list of words seperated by single space in a sentence
'Upwork'.reverse(); // Reverses string // krowpU
'rotator'.isPalindrome(); // Checks for palindrome // true
'flutter example'.toCamelCase(); // Converts to camel case // FlutterExample
```

### Date extension

```dart
DateTime.now().isSameDate(DateTime(2023, 9, 14));  // true, checks if today matches the provided date
DateTime.now().isToday();  // true, checks if today is today
DateTime.now().isTomorrow();  // true, checks if today is tomorrow (unlikely)
DateTime.now().wasYesterday();  // true, checks if today is yesterday (false)
DateTime.now().addDays(5);  // adds 5 days to the current date
DateTime.now().addMonths(3);  // adds 3 months to the current date
DateTime.now().addYears(2);  // adds 2 years to the current date
DateTime.now().subtractDays(7);  // subtracts 7 days from the current date
DateTime.now().subtractMonths(1);  // subtracts 1 month from the current date
DateTime.now().subtractYears(1);  // subtracts 1 year from the current date
```

### Gesture extension

```dart
widget.clickable(onTap: () => Navigator.of(context).pop(),);  // Adds a basic tap gesture with `clickable()`
widget.onDoubleTap(() {});  // Adds a double-tap gesture with `onDoubleTap()`
widget.onLongPress(() {});  // Adds a long press gesture with `onLongPress()`
``` 


### Utility conversion

```dart
double.randomDouble({max});  // Generates a random double between 0.0 (inclusive) and 1.0 (exclusive).
int Duration.inYears;  // Returns the number of whole years spanned by this [Duration].
bool Duration.isInYears;  // Returns `true` if the [Duration] is equal to or longer than one year.
int Duration.absoluteSeconds;  // Returns the number of seconds remaining after accounting for whole minutes.
```

>Made with ❤️ by Abdur Rehman.
