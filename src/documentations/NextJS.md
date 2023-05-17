# NextJS

## Introduction

### What is Next.js?

- React-based framework for building web apps

### Main Features

1. Routing | file-system based
1. Rendering | client-side or server-side
1. Data Fetching | async await in components
1. Styling | any preferred methods
1. Optimizations | web vitals and user experiences
1. TypeScript | enhanced support

### How to Use These Docs

- read sequentially or navigate to specific sections
- switch between app router or pages router

### Pre-Requisite Knowledge

- HTML, CSS
- React

### Accessibility

- use Firefox and NVDA
- use Safari and VoiceOver

### Join our Community

- GitHub Discussion
- Discord, Twitter, Reddit

## Installation

- Node.js 16.8 or later

### Automatic Installation

Terminal

```bash
npx create-next-app@latest
```

### Manual Installation

Terminal

```bash
npm install next@latest react@latest react-dom@latest
```

package.json

```json
{
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "next lint"
  }
}
```

- `dev`: start in development mode
- `build`: build for production usage
- `start`: start production server
- `lint`: set up eslint

#### Create the app folder

- create `app/layout.tsx` (automatically with `next dev`)
- create `app/page.tsx`

#### Create the public folder

- create `public` to store static assets

### Run the Development Server

Terminal

```bash
npm run dev
```

## React Essentials

- difference between client and server components
- see [React Docs](https://react.dev/learn)

### Server Components

- achieve the best of both worlds

#### Thinking in Server Components

- leverage both server and client based on purpose
- non-interactive UI | server components
- interactive UI | client components

#### Why Server Components?

- leverage server infrastructure
- minimize bundle size
- asynchronous data loading
- all are server components by default
- `"use client"` to opt-in client component

### Client Components

- enables interactivity
- pre-rendered on the server | hydrated on the client

#### The "use client" directive

- placed at the very top (before any imports)
- all imports became part of client bundle

##### Good to know

1. server components: exclusively rendered on the server
2. client components: can be pre-rendered and hydrated
3. `"use client"`: must be at the top of a file | no need to be in every file

### When to use Server and Client Components?

- start with server components unless there is a specific need

Table

What you need? | Server Components | Client Components |
--- | --- | --- |
fetch data | ✅ | - |
access backend resources | ✅ | - |
keep sensitive information on server | ✅ | - |
keep large dependencies on server | ✅ | - |
add interactively and event listeners | - | ✅ |
use state and lifecycle | - | ✅ |
use browser-only APIs | - | ✅ |
use custom hooks | - | ✅ |
use react class components | - | ✅ |

### Patterns

#### Moving Client Components to the Leaves

- move interactive logic to client component
- keep layouts as server component

#### Composing Client and Server Components

- can coexist in component tree
- server renders server components, skips client components
- client renders client components, then slot into rendered server components

##### Good to know

- both server and client components are pre-rendered on the server initially
- produce faster page load

##### Nesting Server Components inside Client Components

- one restriction exists
- cannot import server components into client component directly
- recommended: pass server component as props (`children`)
- each can be rendered independently (decoupled)

##### Good to know

- already applied in `layouts` and `pages`
- passing components as props is not a new concept
- component receives prop without knowledge of its content
  - allows prop to be rendered independently (on the server)
  - same as "lifting content up" strategy (minimize re-rendering)
- any prop can be used to pass JSX

#### Passing props from Server to Client Components (Serialization)

- must be serializable (exclude functions, dates, etc)

##### Where is the Network Boundary?

- App Router: between server components and client components
- Page Router: between `getStaticProps`/`getServerSideProps` and page components
- data fetched in server components do not need to be serialized

#### Keeping Server-Only Code out of Client Components (Poisoning)

- at first, `getData` seems to be work on both sides
- however, `API_KEY` is note prefixed with `NEXT_PUBLIC` (private)
- next.js replaces private env variable with empty string
- it can only run on the server side

##### The "server only" package

- prevents accidental import on the client component

Terminal

```bash
npm install server-only
```
- import `server-only` into server only module
- corresponding `client-only` marks client only module

#### Data Fetching

- recommended: fetch data in server components

#### Third-party packages

- can wrap third-party components with `"use client"` directive
- often required by provider components

##### Library Authors

- can use `"use client"` to mark client entry point
- can use it deeper in the tree
- make sure bundler will include `"use client"` (may get stripped)

### Context

- most app use context to share data
- context is fully supported in client components
- context can't be used in server components (have no state)

#### Using context in Client Components

- create context at root will cause error
- instead, create context with its provider inside a client component
- render providers as deep as possible (optimization)

#### Rendering third-party context providers in Server Components

- wrap third-party providers in your own client component

#### Sharing data between Server Components

- context sharing is unavailable in server components
- can use global singletons pattern

#### Sharing fetch requests between Server Components

- recommended: fetch directly inside component
- fetch request are automatically deduplicated and cached
- avoids unnecessary props coupling