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
