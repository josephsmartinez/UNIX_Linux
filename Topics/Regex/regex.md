# RegEx Regular Expression

### The wildcard metacharacter

```
. Ant char except of newline

Example:
/h.t/
matches: 'hat', 'hot', but not 'heat'
```

### Escaping metacharacter

```
\ backslash will escape a character

Example:
h.._export\.txt
```

### Other

```
Space
Table \t
Line returns \n
Non-printable character
ASCII or ANSI
```

### Defining a character set

```
[]

Matches single, lowercase vowels
Regex:  /[aeiou]/
String: "Bananas Peaches Apples"

Regex: /gr[ea]y/
String: "grey gray"

Regex: /gr[ea]t/
String: "great"

Regex: /gr[ea][ea]t/
String: "great graet greet graat"

```

### Character ranges

```
-

Regex: /[ABCDEFGHIJKLMNOPQRSTUVWXYZ]ello/
String: "Hello"

Regex: /[A-Z]ello/
String: "Hello"

Regex: /[A-Za-z]/
String: "Hello"


Phone number

String: "555-666-7890"
Regex: /[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]/


Postal codes

String: "90210"
Regex:  /[0-9][0-9][0-9][0-9][0-9]/

String: "WC2H 9AW"
Regex:  "[0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z] [0-9A-Z][0-9A-Z][0-9A-Z]"

```

### Negative character set

```
^

Regex:  /[^a-z]/
String: "Now we know how to make negative character sets."


Negates the entire character set

Regex:  /[^a-zA-Z]/
String: "Now we know how to make negative character sets."


Only matches a single character

Regex:  /[^aeiou]/
String: "It seems I see the sea I seek."

Regex:  /see[^mn]/
String: "It seems I see the sea I seek."


Must match one character (which may be a space or punctuation)

Regex:  /see[^mn]/
String: "It seems I see the sea I see"

Regex:  /see[^mn]/
String: "It seems I see the sea I see."
```

### Metacharacter inside character sets

```
Regex:  /h[abc.xyz]t/
String: "hat hot h.t"

Regex:  /var[[(]\d[\])]/
String: "var(3) var[4]"

May not require escaping
Regex:  /2003[-/]10[-/]05/
String: "2003/10/05 2003-10-05"

Regex:  /file[0-\_]1/
String: "file01 file-1 file\1 file_1"
```

### Shorthand character sets

```
\d Digit
\w Word character
\s Whtie space
\D Not digit
\W Not word character
\S Not whitespace

Regex:  /\d\d\d\d/
String: "1984 text"

Regex:  /\w\w\w\w/
String: "1984 text 1_5W"

Regex:  /[\w\-]/
String: "blue-green paint"

Regex:  /[\d\s]/
String: "123 456 789 abc"


Be careful when using negatives

Regex:  /[^\d\s]/
String: "123 456 789 abc"

Regex:  /[\D\S]/
String: "123 456 789 abc"
```

### POSIX bracket expressions

```
This command only works on Unix

ps aux | grep --regexp="s[[:digit:]]"
```

### Repetition metacharacter

```
* Preceding item zero or more times
+ Preceding item one or more times
? Preceding item zero or one times

Regex:  /apples*/
String: "apple apples applesssssss"

Regex:  /apples+/
String: "apple apples applesssssss"

Regex:  /apples?/
String: "apple apples applesssssss"


Regex:  /\d\d\d\d*/
String: "123456789 1234 123 12"

Regex:  /\d\d\d+/
String: "123456789 1234 123 12"


Regex:  /[a-z]+\d[a-z]*/
String: "abc9xyz"
String: "a9xyz"
String: "9xyz"

Regex:  /[a-z]+\d[a-z]*/
String: "abc9xyz"
String: "abc9z"
String: "abc9"


Optional letter "u"

Regex:  /colou?r/
String: "color colour"


Find any word that ends in "s"

Regex:  /\w+s/
String: "We picked apples."
```

### Quantified Repetition

```
Regex:  /\w{5}\s/
String: (use shakespeare_sonnet.txt)

Regex:  /\w{2,5}\s/
Regex:  /\w{5,}\s/


Regex:  /\d{3}-\d{3}-\d{4}/
String: 555-867-5309

Regex:  /A{1,2} bonds/
String: "A bonds AA bonds AAA bonds"


Regex:  /\w+_\d+-\d+/
String: "report_1997-04 budget_03-04 memo_712539-100"

Regex:  /\w+_\d{2,4}-\d{2}/
String: "report_1997-04 budget_03-04 memo_712539-100"
```

### Greedy Expression

Expression try and match the lonest string
```
Regex:  /.+\.jpg/
String: "filename.jpg"

Regex:  /.*[0-9]+/
String: "Page 266"

Regex:  /\d+\w+\d+/
String: "01_FY_07_report_99.xls"

Regex:  /".+", ".+"/
String: "Milton", "Waddams", "Initech, Inc."
```

### Lazy Expression

```
Remove the ? from each regex and watch the changes.

Regex:  /\w*?\d{3}/
String: "image_294"

Regex:  /[A-Za-z-.]+?\./
String: "Dr. Roberts, M.D."

Regex:  /.{4,8}_.{2,6}?/
String: "last_qtr_report.xls"

Regex:  /apples??/
String: "We picked apples."
```
