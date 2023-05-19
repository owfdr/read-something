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

## Project Structure

- overview of files and folder structure

### Top-level files

Next.js

- `next.config.js` configuration file for Next.js
- `middleware.ts` Next.js's request middleware
- `.env` environment variables
- `.env.local` local environment variables
- `.env.production` production environment variables
- `.env.development` development environment variables
- `.next-env.d.ts` typescript declaration file for Next.js

Ecosystem

- `package.json` project dependencies and scripts
- `.gitignore` git files and folders to ignore
- `tsconfig.json` configuration file for typescript
- `jsconfig.json` configuration file for javascript
- `eslint.json` configuration file for eslint

### Top-level folders

- `app` app router
- `pages` pages router
- `public` static assets to be served
- `src` optional application source folder
 
### "app" Routing Conventions

#### Routing Files

- `layout` layout
- `page` page
- `loading` loading UI
- `not-found` not found UI
- `error` error UI
- `global-error` global error UI
- `route` api endpoint
- `template` re-rendered layout
- `default` parallel route fallback page

#### Nested Routes

- `folder` route segment
- `folder/folder` nested route segment

#### Dynamic Routes

- `[folder]` dynamic route segment
- `[...folder]` catch-all segments
- `[[...folder]]` optional catch-all segments

#### Route Groups and Private Folders

- `(folder)` group routes without affecting routing
- `_folder` opt folder and all child segments out of routing

#### Parallel and Intercepted Routes

- `@folder` named slot
- `(.)folder` intercept same level
- `(..)folder` intercept one level above
- `(..)(..)folder` intercept two levels above
- `(...) folder` intercept from root

#### Metadata File Conventions

##### App Icons

- `favicon` | `.ico` | favicon file
- `icon` | `.png` `.svg` | app icon file
- `icon` | `.ico` `.jpg` `.jpeg` `.png` `.svg` | generated app icon
- `apple-icon` | `.jpg` `.jpeg` `.png` | apple app icon file
- `apple-icon` | `.js` `.ts` `.tsx` | generated apple app icon

##### Open Graph and Twitter Images

- `opengraph-image` | `.jpg` `.jpeg` `.png` `.gif` | Open Graph image file
- `opengraph-image` | `.js` `.ts` `.tsx` | Generated Open Graph image
- `twitter-image` | `.jpg` `.jpeg` `.png` `.gif` | Twitter image file
- `twitter-image` | `.js` `.ts` `.tsx` | Generated Twitter image

##### SEO

- sitemap | `.xml` | sitemap file
- sitemap | `.js` `.ts` `.tsx` | generated sitemap
- robots | `.txt` | robots file
- robots | `.js` `.ts` | generated robots file

### "pages" Routing Conventions

#### Special Files

- `_app` custom app
- `_document` custom document
- `_error` custom error page
- `404` 404 error page
- `500` 500 error page

#### Routes

Folder convention

- `index` home page
- `folder/index` nested page

File convention

- `tsx` home page
- `tsx` nested page

#### Dynamic Routes

Folder convention

- `[folder]/index` dynamic route segment
- `[...folder]/index` catch-all segments
- `[[...folder]]/index` optional catch-all segments

File convention

- `[file]` dynamic route segment
- `[...file]` catch-all segments
- `[[...file]]` optional catch-all segments

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

#### Create the "app" folder

- create `app/layout.tsx` (automatically with `next dev`)
- create `app/page.tsx`

#### Create the "public" folder

- create `public` to store static assets (optional)
- can be referenced from the base URL (`/`)

**`Mz:`** Files in `public` can be referenced by (`/`)

### Run the Development Server

Terminal

```bash
npm run dev
```

- visit `http://localhost:3000`

## React Essentials

- difference between client and server components
- see [React Docs](https://react.dev/learn)

### Server Components

- combine the best of both worlds

#### Thinking in Server Components

- leverage both server and client rendering
- server components for non-interactive UI
- client components for interactive UI
- server-fist approach (Next.js)

#### Why Server Components?

- minimize bundle size
- enables asynchronous data loading
- all server components by default (App Router)
- `"use client"` to opt-in

### Client Components

- enables interactivity
- pre-rendered on the server | hydrated on the client

**`Mz:`** Client components are pre-rendered and then hydrated

#### The "use client" directive

- must be placed at the top (before any imports)
- all imported modules become part of the client bundle

**`Mz:`** Specify client component with `"use client"`

##### Good to know

1. server components: exclusively rendered on the server
2. client components: can be pre-rendered and hydrated
3. `"use client"`: does no need to be defined in every file

### When to use Server and Client Components?

- always start with server components

Table

| What you need?                        | Server Components | Client Components |
| ------------------------------------- | ----------------- | ----------------- |
| fetch data                            | ✅                 | -                 |
| access backend resources              | ✅                 | -                 |
| keep sensitive information on backend | ✅                 | -                 |
| keep large dependencies on backend    | ✅                 | -                 |
| add interactively and event listeners | -                 | ✅                 |
| use state and lifecycle               | -                 | ✅                 |
| use browser-only APIs                 | -                 | ✅                 |
| use custom hooks                      | -                 | ✅                 |
| use react class components            | -                 | ✅                 |

**`Do:`** Use server components when possible

### Patterns

#### Moving Client Components to the Leaves

- cut down client components by moving them to leaves
- layouts should use server component

#### Composing Client and Server Components

- can coexist in the same component tree
- server, renders server components, skip client components
- client, renders client components, slot in server components

##### Good to know

- both server and client components are pre-rendered on the server initially
- produce faster page load

##### Nesting Server Components inside Client Components

- import restriction:
- cannot import server components into client component directly
- pass server component as props (`children`)
- each can be rendered independently (decoupled)

**`Do:`** Pass server component as props to client component

##### Good to know

- applied in `layouts` and `pages` already
- passing components as props is not a new concept
- component receives prop without knowledge of its content
  - allows prop to be rendered independently (on the server)
  - same as "lifting content up" strategy (minimize re-rendering)
- any prop can be used to pass JSX

#### Passing props from Server to Client Components (Serialization)

- props must be serializable (not functions, Dates, ...)

**`Do:`** Pass only serializable props form server to client

##### Where is the Network Boundary?

- App Router: between server components and client components
- Page Router: between `getStaticProps`/`getServerSideProps` and page components
- data fetched in server components do not need to be serialized

#### Keeping Server-Only Code out of Client Components (Poisoning)

- at first, `getData` seems to be work on both sides
- however, `API_KEY` is note prefixed with `NEXT_PUBLIC` (private)
- next.js replaces private env variable with empty string
- thus, it can only run on the server side

##### The "server only" package

- prevents accidental import on the client component
- gives build-time error

Terminal

```bash
npm install server-only
```
- import `server-only` into server only module
- corresponding `client-only` marks client only module

**`Do:`** Apply `server-only` / `client-only` to limit usage

#### Data Fetching

- recommended: fetch data in server components

#### Third-party packages

- wrap third-party components with `"use client"` when used within server components
- provider components often require this

##### Library Authors

- use `"use client"` to mark client entry point
- use it deeper in the tree for optimization
- configure your bundler to retain `"use client"` (may get stripped)

**`Do:`** Check is `"use client"` included in the bundle file

### Context

- most app rely on context to share data
- context is fully supported in client components
- context can't be used in server components (have no state)

#### Using context in Client Components

- create context at root will cause error
- instead, create context with its provider inside a client component
- render providers as deep as possible (optimization)

Note

- render providers as deep as possible

**`Do:`** Create context inside client components

#### Rendering third-party context providers in Server Components

- wrap third-party providers in your client component (`"use client"` will be declared)

#### Sharing data between Server Components

- context sharing is not necessary in server components
- use global singletons instead

**`Do:`** Use singletons to share data in server components

#### Sharing fetch requests between Server Components

- recommended: fetch directly inside component
- `fetch` request are automatically deduplicated and cached
- avoids unnecessary props coupling