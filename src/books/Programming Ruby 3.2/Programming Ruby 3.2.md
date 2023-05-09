# Programming Ruby 3.2

## Preface

```text
Page:   xi-xiv
Set:    2023/05/08 4:34
End:    2023/05/08 4:47
```

- stay out of yor way
- instance method | `Fred#do_something
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
End:
```

1.

- ruby | object oriented
- combine | data + logic | p17 | ✨
- all types | object
- object identifier | `object_id`
- unique | instance variable
- receiver | .method_name
- message | send to object | Smalltalk
- ruby | pure | no basic types

2.

- indentation | 2 spaces | community
- `()` | can omit
- string literal | create string object
- single quote | little processing
- double quote | more processing
- | substitution sequence | `\n`
- | expression interpolation | `#{}` | arbitrary complex
- `return` || last expression | evaluated
- idiomatic | expert programmer | standard ruby

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

- object to collection | array || hash
- array | linear list
- hash | key/value store | association
- can hold | different types
- array literal | `[]` | create | array object
- hash literal | `{}`| create | hash object
- `nil` | is an object | `nil == nil`
- hash | unique key| order preserved
- default value | `Hash.new()`

5.

- symbol | immutable | fast | key || identifier
- string | data
- symbol literal | `:name`
- value | equivalent to | name
- used in | hash | key
- shortcut | `{ key: value }` | added for | JavaScript, Python user

6.

- `if` | `elsif` | `else` | `end`
- `while` | `end`
- most statement | expression | return value
- `while(line = gets)` | use as condition
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
- `=~` | match operator | return | start index
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
