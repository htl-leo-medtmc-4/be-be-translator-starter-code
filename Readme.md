# BeBe Translator

![BeBe Translator Photo](Translator.jpeg)
## Topics
- Basic statements
- Selections
- Loops
- Chars and Strings
- Unit tests

## Introduction
The BeBe language is a language which adds the character "b" after each vowel and then repeats the vowel. For example, the word "classroom" is translated to "clabassroboobom". A translator inserts a "b" after the first vowel "a" and intersts the vowel "a" after the currently inserted "b". After the first "o" it applies the same procedure and after the second "o" again.

We use this schema to build a cyphering texts. So we enhance the above procedure such that not only all vowels are decorated as given above but the user can define the characters to be decorated. Below an example how the standard BeBe language (cypher around all vowels) can be achieved:

```swift
let bebeTranslator = BeBeTranslator(cyphering: "aeiouy")
XCTAssertEqual(bebeTranslator.translate("The classroom is ugly"), "Thebe clabassroboobom ibis ubuglyby")
```
Your objective is to implement a struct BeBeTranslator which
1. accepts a string or a char which it should be decorated on construction,
2. provides a function `translate` which accepts a `String` as parameter (the sentence to be translated) and returns a `String` (the translated sentence)

## Requirements
1. **Implement the `BebeTranslator` struct**

1. **Provide dummy implementations first**: Do **not** focus on implementing the complete functionality in a first step. Just provide interfaces and empty or trivial implementations to make the compiler happy. With this you already gain 30 % of the assignment (see [Rubrics below](#rubrics)). As soon as your project builds try to fix your code to pass one unit test after the next.  

1. **Unit Tests**: Ensure your implementation passes all provided unit tests in `BebeTranslatorTests.swift`.

## Hints
### Do not modify the unit tests.
Adhere to the tests provided in `PassengerCoachTests.swift` for your implementation. Modifying these tests will impact your ability to validate the requirements effectively.

### Checking a string whether it contains a specific character
For this the function `contains(_ char: Character) -> Bool` of `String` can be used

### Checking a char whether it is an upper case char
For this the function `isUpperCase(_ char: Character) -> Bool` of `Char` can be used.

### Appending a char to a string
The + operator (as in Java) can be used.


## Rubrics
Grading will focus on the following aspects:

| Criterion                                                        | Percent |
|------------------------------------------------------------------|---------|
| Compilation without errors                                       | 35%     |
| Passing all unit tests in `BebeTranslatorTests.swift`            | 45%     |
| Code quality, including adherence to Swift best practices        | 20%     |

