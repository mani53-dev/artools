# Extensions

## list_extension
| Extension | Type | Description |
|---|---|---|
| `replaceFirstWhere` | `METHOD` | Returns `true` if an element was replaced, otherwise returns `false`. |
| `replaceLastWhere` | `METHOD` | Returns `true` if an element was replaced, otherwise returns `false`. |

## date_extension
| Extension           | Type | Description                                                                   |
|---------------------|---|-------------------------------------------------------------------------------|
| `isSameDate`        | `METHOD` | Returns true if the date is the same as [other], ignoring the time component. |
| `isToday`           | `METHOD` | Returns true if the date is today, ignoring the time component.               |
| `isTomorrow`        | `METHOD` | Returns true if the date is tomorrow, ignoring the time component.            |
| `wasYesterday`      | `METHOD` | Returns true if the date was yesterday, ignoring the time component.          |
| `addDays`           | `METHOD` | Adds the specified number of days to the date.                                |
| `addMonths`         | `METHOD` | Adds the specified number of months to the date.                              |
| `addYears`          | `METHOD` | Adds the specified number of years to the date.                               |
| `daysInMonth`       | `METHOD` | Returns the number of days in the given month and year.                       |
| `isLeapYear`        | `METHOD` | Determines if the given year is a leap year.                                  |
| `subtractDays`      | `METHOD` | Subtracts the specified number of days from the date.                         |
| `subtractMonths`    | `METHOD` | Subtracts the specified number of months from the date.                       |
| `subtractYears`     | `METHOD` | Subtracts the specified number of years from the date.                        |
| `dateOnly`          | `METHOD` | Returns an instance of [DateTime] without time related values.                |
| `fromNow`           | `METHOD` | Returns Duration difference between [this] and current time.                  |
| `isBeforeDate`      | `METHOD` | Returns true if the date of [this] occurs before the date of [other].         |
| `isAfterDate`       | `METHOD` | Returns true if the date of [this] occurs after the date of [other].          |
| `isPast`            | `METHOD` | Returns true if [this] occurs in past This doesn't account for time.          |
| `isFuture`          | `METHOD` | Returns true if [this] occurs in future This doesn't account for time.        |
| `isInPreviousMonth` | `METHOD` | Returns true if [this] occurs in previous month                               |
| `isInPreviousYear`  | `METHOD` | Returns true if [this] occurs in previous year                                |
| `isInNextYear`      | `METHOD` | Returns true if [this] occurs in Next year                                    |
| `isAfter`           | `METHOD` | This doesn't account for time.                                                |

## bool_extension
| Extension | Type | Description |
|---|---|---|
| `toggled` | `METHOD` | Returns the boolean value negated (i.e., true becomes false and false becomes true). |
| `toInt` | `METHOD` | Returns 1 if [this] is true and 0 if otherwise. |
| `randomBool` | `METHOD` | Generates a random boolean value. |

## double_extension
| Extension | Type | Description |
|---|---|---|
| `randomDouble` | `METHOD` | Generates a non-negative random floating point value uniformly distributed in the range from 0.0, inclusive, to 1.0, exclusive. |

## int_extension
| Extension | Type | Description |
|---|---|---|
| `length` | `METHOD` | Returns no. of digits |
| `digits` | `METHOD` |Returns list of digits of [this]|
| `isDivisibleBy` | `METHOD` | Returns true if [this] can be completely divisible by [divider] |
| `isDivisibleByAll` | `METHOD` |  Returns true if [this] can be completely divisible by all of the [dividers]. |
| `twoDigits` | `METHOD` |  Returns [int] as string which has a zero appended as prefix if [this] is a single digit value. |
| `randomInt` | `METHOD` | Produces a non-negative random integer within the range [0, max],where the default value of [max] is 1,000,000. |

## object_extension
| Extension | Type | Description |
|---|---|---|
| `isNull` | `METHOD` | Returns true if the object is null |
| `isNotNull` | `METHOD` | Returns true if the object is not null |


## num_extension
| Extension | Type | Description |
|---|---|---|
| `isBetween` | `METHOD` | Converts positive numbers to their negative counterparts. Boundaries are included if [inclusive] is set to true. |
| `negative` | `METHOD` | Converts positive numbers to their negative counterparts.Use [abs] to convert numbers to their positive equivalents. |

## string_extension
| Extension | Type | Description |
|---|---|---|
| `getFirstLetter` | `METHOD` | Returns the first letter of the string.If the string is empty, returns an empty string. |
| `getLastLetter` | `METHOD` | Returns the last letter of the string.If the string is empty, returns an empty string. |
| `doesNotContainEmoji` | `METHOD` | Checks if the string does not contain any type of emoji. |
| `containsEmoji` | `METHOD` | Checks if the string contains any type of emoji. |
| `isNumeric` | `METHOD` | Returns true if the string is a valid number. |
| `isremoveAllWhitespace` | `METHOD` | Trims the string and removes all whitespace. |
| `isPalindrome` | `METHOD` | Returns true if the string is a palindrome. |
| `toCamelCase` | `METHOD` | Converts the string to camel case. |
| `toSnakeCase` | `METHOD` | Converts the string to snake case. |
| `reverse` | `METHOD` | Reverses the string. |
| `isAlphabetic` | `METHOD` | Checks if the string contains only alphabets. |
| `isAlphanumeric` | `METHOD` | Checks if the string contains only alphanumeric characters. |
| `initials` | `METHOD` | Returns the initials of the string. |
| `isStrongPassword` | `METHOD` | Checks if the string is a strong password. |
| `toDouble` | `METHOD` | Converts the string to a double. |
| `toInt` | `METHOD` | Converts the string to an int. |
| `wordCount` | `METHOD` | Return the count the number of words |
| `toIntOrNull` | `METHOD` | Returns [this] as [int] or null |
| `wrap` | `METHOD` | Adds the specified [prefix] and [suffix] around the string. |
| `unwrap` | `METHOD` | Removes the specified [prefix] and [suffix] from the string if they exist. |
| `toBoolOrNull` | `METHOD` | Converts the string to a boolean if it represents a true value (case insensitive) or a non-zero integer; otherwise, returns null. |
| `isBinary` | `METHOD` |  Checks if the string can be parsed string which only contains 1's and 0's |
| `isHexadecimal` | `METHOD` | Checks if the string can be parsed hex string which only |
| `isOctal` | `METHOD` | Checks if the string can be parsed hex string which only|
| `isDecimal` | `METHOD` | Checks if the string can be parsed into a decimal.|
| `isDouble` | `METHOD` | Checks if the string can be parsed into a double. |
| `toDoubleOrNull` | `METHOD` | Tries to parse the string into a double, returning null if parsing fails. |
| `words` | `METHOD` | This would tokenize [this] into words by breaking it with space. |
| `isBlank` | `METHOD` | Checks if the string is blank (contains only whitespace characters or is empty). |
| `hasContent` | `METHOD` | Checks if the string is not blank (contains non-whitespace characters). |
| `toDateTimeOrNull` | `METHOD` | Tries to parse the string into a DateTime, returning null if parsing fails. |
| `equalsToIgnoreCase` | `METHOD` | Compares two strings for equality, ignoring case differences |
| `countOccurrences` | `METHOD` | Counts the occurrences of a specific character in the given string. |
| `toColor` | `METHOD` | Converts a hex color string to a Color object. |
| `darken` | `METHOD` | The amount to darken the color by can be specified as a parameter. |
| `lighten` | `METHOD` | The amount to lighten the color by can be specified as a parameter. |
| `validateAllFields` | `METHOD` | It returns `true` if all fields are valid, otherwise `false`. |
| `resetAllFields` | `METHOD` | Resets all the form fields.|
| `isNotNullOrEmpty` | `METHOD` | Checks if the string is neither null nor empty. |
| `isNullOrBlank` | `METHOD` | vChecks if the string is null or contains only whitespace. |
| `hasContent` | `METHOD` | Checks if the string has any content (not null and not empty). |
| `orEmpty` | `METHOD` | Returns the string itself if it's not null, otherwise returns an empty string. |

## widget_extensions
| Extension                  | Type | Description |
|----------------------------|---|---|
| `withCircularBorderRadius` | `METHOD` | Adds a circular border radius to a widget. |
| `withShadow`               | `METHOD` | Adds a shadow to a widget with customizable color, blur radius, and offset. |
| `withOpacity`              | `METHOD` | Sets the opacity of a widget. |
| `rotated`                  | `METHOD` | Rotates a widget by a specified angle. |
| `scaled`                   | `METHOD` | Scales a widget by a specified factor. |
| `alignTo`                  | `METHOD` | Aligns a widget within its parent using a specified alignment. |
| `visibility`               | `METHOD` | Toggles the visibility of a widget. |
| `isKeyboardOpen`           | `METHOD` | Returns the height of the screen associated with the current context. |

## duration_extension
| Extension | Type | Description |
|---|---|---|
| `inYears` | `METHOD` | Returns the number of whole years spanned by this Duration.Please note that this does not account for leap year. |
| `isInYears` | `METHOD` | Returns true if [this] duration equals to or more than a year. |
| `isInDays` | `METHOD` | Returns true if [this] duration equals to or more than a day. |
| `isInHours` | `METHOD` | Returns true if [this] duration equals to or more than an hour but is less than a day. |
| `isInMinutes` | `METHOD` | Returns true if [this] duration equals to or more than a minute but is less than an hour.|
| `isInSeconds` | `METHOD` | Returns true if [this] duration equals to or more than a second but is less than a minute.|
| `isInMillis` | `METHOD` |Returns true if [this] duration equals to or more than a millisecond but is less than a second.|
| `absoluteMinutes` | `METHOD` | Returns remaining minutes after deriving hours.|
| `absoluteHours` | `METHOD` | Returns remaining minutes after deriving days.|
| `absoluteSeconds` | `METHOD` | Returns remaining minutes after deriving minutes.|

## ontap_extension
| Extension     | Type | Description |
|---------------|---|---|
| `onInkTap`    | `METHOD` | Adds an ink splash effect with the onTap gesture. |
| `clickable`   | `METHOD` | Adds a basic onTap gesture without any visual feedback. |
| `onDoubleTap` | `METHOD` | Adds a double-tap gesture. |
| `onLongPress` | `METHOD` | Adds a long press gesture. |
