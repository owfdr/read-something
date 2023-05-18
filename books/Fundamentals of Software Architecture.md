# Fundamentals of Software Architecture

<img src="https://m.media-amazon.com/images/I/91HMsnYFsKL.jpg" width="300" alt="book cover" />

[Amazon](https://www.amazon.com/Fundamentals-Software-Architecture-Comprehensive-Characteristics/dp/1492043451)

## Preface: Invalidating Axioms

**`Do:`** Look at old axioms under new light  

<!-- stash
1. math is based on axioms | software world is ever-changing
2. state of dynamic equilibrium | chaotic change in the long-term | Kubernetes
3. question fundamental axioms regularly | think of dynamic equilibrium
4. all innovations lead to new capabilities and tradeoffs | XP -> CD -> DevOps -> Microservices -> Containerization -> Serverless

0. axiom: proposition regarded as being true
1. software world changes at a rapid pace
2. short equilibrium, long-term chaotic change
3. question old axioms
4. new capabilities and tradeoffs | XP -> CD -> DevOps -> Microservices -> Container -> Cloud
5. changes and today's perspective
6. emphasis on discipline
7. everything is a tradeoff
8. modern overview of software architecture
-->

<!-- 
### Conventions Used in This Book

- *Italic* - new things
- `Constant width` - program elements
- **`Constant width bold`** - type literally
- *`Constant width italic`* - to replace

### Using Code Examples

[Download](http://fundamentalsofsoftwarearchitecture.com) 
-->

## Chapter 1 - Introduction

**`Do:`** Look each architecture in its context

<!-- 
1. why no clearly defined career path?
2. no clear definition
3. scope of the field (Figure 1-1)
4. expanding role
5. dynamic problem (non-static)
6. outdated solutions
7. in need of reassessment
8. must study in context 
-->

### Defining Software Architecture

**`Mz:`** style + quality + rule + guideline = architecture

<!-- 
1. roadmap or blueprint? | what does it actually contains?
2. structure refers to architecture style (microkernel, microservices) | incomplete
3. characteristics refers to architecture quality | distinct from functionality
4. decisions represents rules of constructions | what is allowed and what is not
5. rules can be broken through variance | ARB
6. principles are guidelines rather than hard rules 
-->

### Expectations of an Architect

<!-- **`Mz:`** Eight expectations to fulfill. -->

**`Do:`** Fulfill eight expectations

<!-- 
1. emphasis on expectations rather than role
2. eight core expectations
    - make decisions
    - continually analyze
    - keep with trends
    - ensure compliance
    - diverse experience
    - business domain knowledge
    - interpersonal skills
    - navigate politics
3. succuss requires meeting these expectations 
-->

#### Make Architecture Decisions

**`Do:`** Guide rather than specify

<!-- 
1. purpose: guide your team
2. guide rather than specify (reactive-based framework vs. React.js)
3. help teams make the right choices | there is a line 
-->

#### Continually Analyze the Architecture

**`Do:`** Improve to avoid decay

<!-- 
1. purpose: make improvements
2. avoid structural decay
3. don't overlook testing and release environments | agility
4. requires holistic analysis 
-->

#### Keep Current with Latest Trends

**`Do:`** Update your knowledge

#### Ensure Compliance with Decisions

**`Do:`** Oversee the implementation

#### Diverse Exposure and Experience

**`Do:`** Expand your technical breadth

#### Have Business Domain Knowledge

**`Do:`** Learn your business

#### Possess Interpersonal Skills

**`Do:`** Take leadership

#### Understand and Navigate Politics

**`Mz:`** Every decision you make will be challenged

### Intersection of Architecture and...

**`Mz:`** Pets.com's burst (2000) and Elastic scale

#### Engineering Practices

<!-- - **`Mz:`** Process means how people organize and interact -->
<!-- - **`Mz:`** Flavors of agile includes scrum, Xp, lean and crystal -->
<!-- **`Mz:`** All architecture become iterative because of unknown unknowns -->
<!-- **`Mz:`** Practice is not process   -->
<!-- **`Mz:`** architectural style and engineering practices should from a symbiotic mesh   -->
<!-- **`Do:`** Build evolutionary architecture -->

**`Do:`** Ensure alignment between practices and architectural style

<!-- 1. Traditionally, software architecture and development process were a separate concern
2. Recent engineering advances have brought process concerns to software architecture
3. Due to unknown unknowns, focusing on engineering practices is crucial in software development
4. Unknown unknowns pose significant challenges to software systems. 
5. An iterative process aligns better with the nature of software architecture.
6. The architectural style and engineering practices should harmonize. -->

#### Operations/DevOps

**`Do:`** Collaborate with operations team

#### Process

**`Do:`** Adopt agile methodology

#### Data

<!-- **`Mz:`** Date storage is also an important aspect -->

**`Do:`** Don't underestimate data storage

### Laws of Software Architecture

<!-- **`Mz:`** 1. Everything in software architecture is a trade-off   -->
<!-- **`Mz:`** 2. Why is more important than how  -->

**`Do:`** Think architecture in terms of trade-offs, and explain why

## Chapter 2 - Architecture Thinking

**`Mz:`** Architecture thinking has four aspects

### Architecture Versus Design

<!-- **`Mz:`** Design and architecture must kept in sync -->

**`Do:`** Team up with developers and provide mentorship

### Technical Breadth

<!-- **`Mz:`** Architect's value lies in technical breadth -->

**`Do:`** Prioritize technical breadth over depth

### Analyzing Trade-Offs

<!-- **`Mz:`** Only trade-offs in architecture -->

**`Do:`** Always think about trade-offs

### Understanding Business Drivers

**`Do:`** Think what drives the business

### Balancing Architecture and Hands-On Coding

<!-- **`Do:`** Balance architecture and coding -->

**`Mz:`** Every architect should code

**`Do:`** 1. POCs to validate architecture (with quality code)

**`Do:`** 2. Automation tools

**`Do:`** 3. Code reviews

**`Do:`** 4. Don't be a bottleneck
