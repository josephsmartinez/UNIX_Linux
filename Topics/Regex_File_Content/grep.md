# The grep Commmand

The grep utility searches any given input files, selecting lines that match one or more patterns.  By default, a pattern matches an input line if the regular expression (RE) in the pattern matches the input line without its trailing newline. 

## Sections

- `egrep` same as running grep -E.
- `fgrep` same as running grep -F
- `rgrep`same as running grep -r

NOTE: The following examples will use the listed files

- NCHS_-_Leading_Causes_of_Death__United_States.csv

## Using grep

Match pattern
> grep ricco System_Users.csv
Don't match pattern
> grep -v ricco System_Users.csv

Color output `--color`
> grep --color "Iowa" NCHS_-_Leading_Causes_of_Death__United_States.csv
Line numbers of successful matches `-n`
> grep --color -n "Iowa" NCHS_-_Leading_Causes_of_Death__United_States.csv
Return count lines found `-c`
> grep --color -n -c "Iowa" NCHS/NCHS_-_Leading_Causes_of_Death__United_States.csv
Case-insensitive grep searches `-i`
> grep --color -n -i "Iowa" NCHS_-_Leading_Causes_of_Death__United_States.csv
Searching multiple files using a wildcard
> grep --color -n -i "Iowa" *.csv
Recursively searching subdirectories `-r`
> grep --color -n -i -r "Iowa" *

## Using Regex with grep (BRE) BRE

Using `grep -E`

Plain text  
Matches with any word that contain (substring or no)
> grep -E "foo" bar

Anchors `^`
Very beginning of a line.
> ^

- Brackets `[]`
Can be any one character found within the bracket group

> grep --color "0[3-4]:..:.." Traffic_Violations.csv

Period character `.`  
Used in regular expressions to mean that any single character can exist at the specified location.

Any ticket between 3 and 4 AM
> grep --color "0[3-4]:..:.." Traffic_Violations.csv

Find something between two chars
grep -Po '(?<=\[).*(?=\])' configs/aws_account_profiles

Specifying Match Repetition `{}`

Resources:

https://www.regular-expressions.info/lookaround.html

Grep
https://www.computerhope.com/unix/ugrep.html