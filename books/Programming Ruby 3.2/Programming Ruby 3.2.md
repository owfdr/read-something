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

### 4. Symbols

- hash key | method name | same string (over and over)
- immutable string | only created once | fast look up
- string is for data | symbol is for identifier
- symbol literal starts with `:`
- value is equivalent to its name
- frequently used in hashes (as keys)
- `{ key: value }` | shortcut  for JavaScript, Python user

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

- everything is an object
- instantiation can be direct or indirect

### 1. Defining Classes

- domain concepts | become classes
- `new` | allocates memory | hold uninitialized object
- `initialize` | set the state for each object
- `@` | denote instance variable | part of the name | available to all methods
- Object's `to_s` default | print `ClassName:object_id` | can override
- `puts` calls `to_s`
- `p` calls `inspect`

### 2. Objects and Attributes

- attribute | method for access and manipulate object state (without arguments)
- `def` `@.` `end` | accessor method
- `attr_reader` | shortcut | use symbol
- `def` `.=(.)` `end` | setting method
- `attr_writer` | shortcut | rare
- `attr_accessor` | combined shortcut
- can have computed attributes
- hiding the difference | Uniform Access Principle

### 3. Classes Working with Other Classes

- `CSV` | `headers: true`
- `<<` | left shift operator | append to array
- `require` for library
- `require_relative` for external file
- `ARGV` for accessing command-line arguments

### 4. Specifying Access Control

- risk of implementation interdependence | coupling
- never expose methods that lead to invalid state
- 3 levels of access control: `public` | `protected` | `private`
- `public` by anyone | default
- `protected` only within class or subclass | rare
- `private` no explicit receiver (always `self`)
- dynamic access control (not static)
- can be used on class or module
- access control is actually a method
- `def` returns symbol
- 3 ways of applying access control: `section` | `list` | `direct`

### 5. Variables

- keep track of objects | hold references
- objects float around in a big pool somewhere (heap) | pointed to by variables
- `class` | `object_id`
- `dup` for create new object | duplicate
- `freeze` for prevent changes | become immutable

### 6. Reopening Classes

- can reopen class at anytime (monkey-patching) | 3rd party library
- example: Ruby on Rails | extend core classes
- do with caution | don't change existing method
- refinements: Chapter 22

## 4. Collections, Blocks, and Iterators

```text
Page:   53-83
Set:    2023/05/09 10:52
End:    2023/05/10 9:47
```

- most programs deal with collections of data | handled by `array` and `hash`
- `block` encapsulate chunks of code | powerful iterator constructs

### 1. Array

<!-- stash
- `[1, 2, 3]` | elements are inserted individually
- `1, 2, 3` | can also be used in replacement
-->

- hold collection of references | identified by index
- `[., ., .,]` array literal
- `Array.new`, `[]` | create empty array
- returns `nil` if nothing is there
- `-.` counts form the end
- `[]` | implemented as instance method | equivalent to `.[]()`
- `[start, count]` count number of objects from start
- `[..]` range includes end position | `[...]` range excludes end position
- `[]=`, `.[]=()` | gaps will be filled with `nil`
- `[start, 0]=` inserted before start
- `[start, n]=` replaced from start
- `%w` shortcut | create strings array (words)
- `%i` shortcut | create symbols array (intern)
- as stack: `push`, `pop`
- as FIFO queue: `push`, `shift`
- `first()` return n entries at head | default: 1
- `last()` return n entries at end | default: 1

### 2. Hashes

- called: associative array, map, dictionary
- also collection of references | similar to array
- index (key) can be any type | often symbols or strings
- hashing function | convert keys
- `{ key => value }` hash literal
- `{ key: value }` shortcut | key is symbol
- `{ variable: }` shortcut | key is variable name
- `=>` hash rocket
- key can be any object | remembers the order
- more methods: Chapter 5

### 3. Digging

- data can be nested
- `dig` | defined for `array`, `hash`, `struct`
- returns `nil` instead of an exception

### 4. Word Frequency: Using Hashes and Arrays

- `scan(/./)` use regex | return array
- `has_key?` check if contains key
- `Hash.new(.)` set default value
- `sort_by` rearrange by criterion
- `reverse_each` iterate in reverse
- `Minitest` light weight testing framework
- `assert_equal` compare two values
- `tally` count occurrences

### 5. Blocks and Enumeration

- iterator | design pattern
- enumerator | implementation of iterator design
- `map` transform each element
- `tap` perform operations for debugging

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
- capitalized method name | `Integer` | `Kernel` module
- can end with `?` `!` `=`
- `?` return boolean result | predicate methods
- `!` will modify receiver | bang methods | often pared with safe version
- `=` used for assignment
- some operators can be overridden | e.g. `+`
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
