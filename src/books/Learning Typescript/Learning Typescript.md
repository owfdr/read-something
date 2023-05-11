# Learning Typescript

## 1. From JavaScript to Typescript

### 1. History of JavaScript

`3  7:24`

<!-- stash:
- quirky yet wonderfully flexible
- show me the perfect ... language with no users | Anders Hejlsberg | TSConf 2019
-->

- designed in 10 days | by Brendan Eich | 1995
- technical committee | TC39
- language specification | ECMAScript
- maintains backward compatibility

`4  7:34`

### 2. Vanilla JavaScript’s Pitfalls

- use without any extensions or frameworks | vanilla
- as project gets larger and longer | more pitfalls
- no restriction in code structure
- no type checking before running (dynamically typed)
- no specs on documentation | alternative: JSDoc
- key issues: description can be wrong | code may change | can be verbose | not scalable
- can't automate large changes | compare to C#, Java

`5  7:46`

### 3. TypeScript

`6  8:04`

- open sourced in 2012 | by Microsoft
- head of development: Anders Hejlsberg | C#, Turbo Pascal
- superset of JavaScript
- a programming language | all JS syntax + new syntax
- a type checker
- a compiler | runs type checker | generate JS code
- a language service | provide helpful utilities to editors

### 4. Getting Started in the TypeScript Playground

`7  8:26`

<!-- stash:
- many projects uses dedicated transpilers | Babel
- [Project Starters](https://learningtypescript.com/starters)
-->

- [TypeScript Playground](https://www.typescriptlang.org/play)
- prevent functions with wrong arguments
- baked in type syntax
- intelligent suggestion
- compile down to JS

`8  8:30`
`9  8:37`
`10 8:47`

### 5. Getting Started Locally

- `npm install -g typescript` | install typescript globally
- `tsc --version` | check version | if setup properly
- `tsc --init` | create configuration file
- `tsconfig.json` | settings for typescript when analyzing your code
- will produce JS files regardless of the type error
- `tsconfig.json` | declares a typescript project | with VSCode's respect

`11 8:55`
`12 9:02`

### 6. What TypeScript Is Not

`13 9:08`

<!-- stash:
- TC39 is investigating in adding syntax for type annotations
- Deno and ts-node all internally convert TypeScript code into JavaScript before running

TypeScript Design Goal
- align with current and future ECMAScript proposals
- preserve runtime behavior of all JS code
-->

- does not remedy for bad code | doesn't enforce code structures | only types
- does not add new code features (tasks of TC39) | some artifact remains
- does not slow down your code (at runtime) | takes some time to build
- analyzing code is done separately from generating codes

### Summary

`14 9:28`

<!-- stash:
- pitfalls: costly freedom | loose documentation | weak developer tooling
- TypeScript is: programming language | type checker | compiler | language service
- advantages: freedom through restriction | precise documentation | strong developer tooling
-->

1. a brief history of JavaScript
1. JavaScript's pitfalls
1. what TypeScript is
1. TypeScript's advantages
1. getting started with TypeScript locally
1. what TypeScript is not
