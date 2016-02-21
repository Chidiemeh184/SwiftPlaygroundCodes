/*:
**Exercise:** Get Acquainted. Get a few properties of each person in your class... name and email are good. Use the `String` and `Character` as well as the data types and operators in [Basics | Data Types | Operators](Basics%20|%20Data%20Types%20|%20Operators) to complete this exercise.
>> **Example Output:**
* `My name is Mathew Sheets, my email is swift.dude@gmail.com.`
* `Other students in my class are Annie, Sam, Jack, Hudson, Oliver.`
* `Oliver dropped this class.` (**use the second string to pull out the last persons name.**)
* `Other students in my class are Annie, Sam, Jack, Hudson and CARSON was added.`  (**use the second string and append another person.**)
* `Jack and Hudson are in the class.` (**use the second string to pull out third and fourth person.**)
*/
var one = (1, 2, 3, 4)
var two = (first: 10, second: 20)

var three = (one, second: two, third: (first: 100, second: 200, third: 300 ))

three.second.first = 1

var (eke, iue, hdj) = three



