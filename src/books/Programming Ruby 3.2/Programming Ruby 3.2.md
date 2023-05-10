# Programming Ruby 3.2

## Preface

```text
Page:   xi-xiv
Set:    2023/05/08 4:34
End:    2023/05/08 4:47
```

- stay out of yor way
- instance method | Fred#do_something
- class method | Fred.new | ~~Fred::new~~

## 1. Getting Started

```text
Page:   3-15
Set:    2023/05/08 4:56
End:    2023/05/08 6:09
```

- rbenv | RVM | asdf
- `PATH`
- `.ruby-version`
- `ruby` | `irb`
- EOF | end-of-file character | `^D`
- `:sum` | symbol
- `#!/usr/bin/env ruby`
- `chmod +x`
- 9000 methods | stdlib
- RubyDoc | gems
- `ri`

## 2. Ruby.new

```text
Page:   17-31
Set:    2023/05/08 15:09
End:    2023/05/08 17:18
```

1.

- object oriented programming language
- object | combines data with logic that manipulates ... | p17 | ✨
- all types are objects | `object_id`
- receiver | .method_name
- message | send to object | Smalltalk
- no basic types | pure

2.

- indentation | 2 spaces | community
- `()` | can omit
- string literal | create string object
- single quote | little processing
- double quote | more processing
- | substitution sequence | `\n`
- | expression interpolation | `#{}` | arbitrary complex
- `return` || last expression | evaluated
- idiomatic | expert | standard ruby

3.

- first character | visibility
- lowercase | local variable
- `$` | global variable | rare
- `@` | instance variable
- `@@` | class variable | rare
- capitalize | class | module | constant
- variable | `snake_case`
- class | `CamelCase`
- constant | `UPPER_SNAKE_CASE`
- method | can end with | `?` `!` `=`

4.

- array | linear list
- hash | key/value store | association
- can hold different types
- array literal | `[]` | create array object
- hash literal | `{}` | create hash object
- `nil` | is an object | `nil == nil`
- hash | key unique | order preserved
- set default value | `Hash.new(0)`

5.

- symbol | immutable | fast
- string | data
- symbol literal | `:name`
- value | equivalent to name
- used in hash (key)
- `{ key: value }` | added for JavaScript, Python user

6.

- `if` | `elsif` | `else` | `end`
- `while` | `end`
- most statement | expression | return value
- `while(line = gets)` | can use as condition
- EOF | `nil` | false
- statement modifier | `if` | `unless` | `while` | `until`
- `if` | guard clause

7.

- regular expression | `(/pattern/)`
- is object | ruby
- either | `/Ruby|Rust/` | `/Ru(by|st)/`
- repetition | `ab+c` | `ab*c`
- character classes
- | `\s` | whitespace character | space | tab | newline
- | `\d` | any digit
- | `\w` | any word character
- | `.` | almost | any character
- `=~` | match operator | return start index
- `.match?` | synonymous | more common | boolean
- `sub` | replace first
- `gsub`  | replace all | (global substitution)

8.

- ruby' strength | block
- block | chunk of code | can pass to | method
- delimiter | `do` `end` | `{}`
- singleline | `{}`
- multiline | `do` `end`
- can pass to | any method | even don't take argument | ignored
- limit to | one block | per method call
- `yield` | invoke block call
- `yield(argument)` | `|argument|` || `_1`
- enumeration | iteration | doing something similar to a collection
- method call | `each` | `times` | `upto` | `downto`

9.

- `puts` | `print` | standard output stream
- `gets` | standard input stream

10.

- `#` | singleline comment
- `=begin` `=end` | multiline comment | rare
- `# frozen_string_literal: true` | magic comment

## 3. Classes, Objects, and Variables

```text
Page:   33-51
Set:    2023/05/09 6:34
End:    2023/05/09 10:04
```

- more flexible
- everything | object
- instantiate | directly | indirectly

1.

- `.new` | memory | uninitialized
- call | `initialize` | setup
- `@` | instance variable
- `p` | `inspect` | internal representation

2.

- attribute | externally visible facet
- accessor method | `def` `@` `end`
- `attr_reader` | shortcut | symbol
- update method | `def` `=()` `end`
- `attr_writer` | shortcut | rare
- `attr_accessor` | shortcut | combined
- hiding the difference | Uniform Access Principle
- attribute | method | expose | internal state

3.

- `<<` | left shift operator | append
- `require` | standard library
- `require_relative` | external file
- `CSV` | `ARGV`

4.

- coupling | degree of interdependence
- access control | at run time
- `public` | `protected` | `private`
- method | not keyword

5.

- variable | reference to object
- `class` | `object_id`
- `dup` | `freeze`

6.

- reopen classes | monkey-patching
- refinement

## 4. Collections, Blocks, and Iterators

```text
Page:   53-83
Set:    2023/05/09 10:52
End:    2023/05/10 9:47
```

- effective ruby programmer | master array and hash
- collection + block | powerful iterator

1.

- `-1` | negative integer | counts form the end
- `..` | `...`
- any gap wil be filled with `nil`
- `[]` operator | implemented as method
- `[start, length]`
- `length = 0` | insert before start
- `length = 1` | replace element at start
- `[1, 2, 3]` | elements are inserted individually
- `1, 2, 3` | can also be used in replacement
- `[from..to]` | range is also allowed
- `%w` | `%i`
- stack | `push` | `pop`
- FIFO queue | `push` | `shift`

2.

- hash | associative array | map | dictionary
- keys are hashed | hashing function
- `=>` | hash rocket
- `{name:, age:}` | shortcut
- advantage | use object as index | remembers the order

3.

- `dig` | returns nill instead of an expiation

4.

- word frequency | array + hash
- `sort_by`
- `reverse_each`
- `minitest/autorun` | `Minitest::Test`
- `tally`

5.

- `each` | iterator | invokes a block of code repeatedly
- `map` | enumerator method | returns a new array
- `tap` | for debugging

6.

- `{}` | one line
- `do` `end` | multiple lines
- `|value; local|` | block-local variable | rare
- `_1` | first argument | shortcut

7.

- binding | execution context
- `yield` | transfer control to another block
- using `each` to implement | `find` | `map`
- `with_index` | can chain to any iterator method
- `reduce` | `:+` | `:*`

8.

- transaction
- `block_given`

9.

- block can be stored as object in variable
- `&` | convert block to `Proc`  || convert `Proc` to block
- `call` | invoke proc
- `lambda`
- `->` | stabby lambda | shortcut
- `proc`
- `Proc.new` | current preferred style
- lambda return error if number of arguments is wrong
- proc truncate or pad with `nil`
- using return in proc will also return from the caller
- using return in lambda will not

10.

- block is closure
- `->` | ASCII | `λ`
- `(arg)` | optional

11.

- external iterator
- `Enumerator` | class
- `Enumerable` | mixin
- `to_enum` | `enum_for` | create Enumerator object
- `each` | default | can use other method
- `next` | access next element
- most iterator returns Enumerator if no block is given
- `loop` | repeatedly invoke block
- smart when used with Enumerator

12.

- enumerators are objects
- `each_char`
- `each_with_index` |`with_index`
- `to_a`

13.

- enumerators can be used as generators | filters
- `Enumerator.new` | `|yielder|`
- `Enumerator.produce` | simplify
- careful with infinite sequences | `count` | `select`
- `Enumerator::lazy` | lazy evaluation | `take` | `first`

## 5. More About Methods

```text
Page:   85-99
Set:    2023/05/10 16:37
End:    2023/05/10 19:28
```

### 1. Defining a Method

- `def` | keyword | return symbol
- redefine method | can be dangerous
- endless method | `() =`
- no body method | `; end`
- capitalized method name | `Kernel` module | `Integer`
- can end with `?` `!` `=`
- `?` return boolean result | predicate methods
- `!` will modify receiver | bang methods | often pared with safe version
- `=` used for assignment
- set of operators can be overridden | `+`
- define method for specific object | `def self.method` | `def object.method`
- omit `()` no args | otherwise use `()`
- `=` | default value | can reference previous args
- `*` | splat | can omit name when passing | can put in-between | only one
- keyword parameter | must after positional parameters
- `**` | double splat | for keyword arguments
- `**nil` | no keyword arguments || `*` may pull them in as hash
- `options = {}` | arbitrary hash parameters | deprecated
- `&` | convert bloc to proc | can omit name when passing
- `...` | roll all arguments | for passing

### 2. Calling a Method

- can omit receiver if default is `self`
- `value=` prefer create local variable in ambiguity
- method call without parenthesis | commands
- positional arguments | must be in order
- keyword arguments | any order
- every method returns value
- omit `return` if not needed | idiomatic
- return multiple statements will become an array | parallel assignment
- `*` can also expand object into arguments | `to_a`
- `**` can also expand object into block | `to_h`
- splat and argument can intermix
- shortcut access syntax
- `&` can also convert object (proc) into block | `to_proc`
- `Symbol` implements `to_proc` | `map(&:uppercase)`
