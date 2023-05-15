# The Pragmatic Programmer

Author: Dave Thomas, Andy Hunt

## From the Preface to the First Edition

- pragmatic | skilled in business (latin) | fit for use (greek)
- pragmatic programmer's characteristics
    1. early adapter | love to try out new thing (experience)
    1. inquisitive | asking questions (pack rat for little facts)
    1. critical thinker | not taking things as given
    1. realistic | understand how hard the problem really is
    1. jack of all trades | always ready to do new things
- tip 1: only craft when you care
- tip 2: keep a situational awareness

## 1. A Pragmatic Philosophy

- tip 3: you have the agency
- tip 4: have responsibility
- tip 5: no broken windows (entropy)
- tip 6: induce change by doing
- tip 7: be aware of slow changes
- tip 8: make user understand the trade-offs
- tip 9: always invest in learning
- tip 10: think critically as a reader
- tip 11: package and communicate well
- tip 12: pitch well and gather feedback
- tip 13: document your code

## 2. A Pragmatic Approach

- tip 14: think about easy to change (ETC)
- tip 15: single representation no duplication (DRY)
- tip 16: make it easy to reuse

### Topic 10. Orthogonality

- vector | two lines are independent
- change in one should not affect the other

## Topic 11. Reversibility

- engineer likes singular answer
- but value of x will always change
- avoid myopic belief in a singular solution
- critical decisions gradually limits options
- slight change can have catastrophic effect
- critical decisions are often irreversible
- committing to a decision is hard to reverse
- many of our recommendations increases flexibility
- decisions aren't always optimal on the first attempt
- abstractions increase flexibility
- avoid the assumption that decisions are permanent
- always be prepared for contingencies
- flexibility is also crucial in architecture and deployment
- server-side best practices have changed over and over
- you can't plan for this volatility
- make it easy to change by abstraction
- enable your code to be flexible and adaptable

### Topic 12. Tracer Bullets

- how to hit targets in software development
- it depends on your aiming device
- tracer bullets create bright streaks in the air
- it provides real-time feedback
- same applies to novel projects
- when facing vague user requirements and changing environments
- you tend to over-specify and hope for the best
- pragmatics prefer software tracer bullets
- tracer bullets provide immediate feedback
- it quickly connect requirements to the final system
- high risk and requirement comes first
- start with "hello world"
- find simple feature that exercise all layers
- we had a complex system with many uncertainties
- we built a limited system with all layers included
- tracer code is not disposable
- it is an incremental approach
- the conventional is heavy modular approach
- tracer method has many advantages
- 1 users will be exited by the progress
- 2 have a structure to built on
- 3 integrate incrementally instead of attempting a big-bang
- 4 have something to demonstrate
- 5 make small but sequential progress
- tracer bullets aid in aim adjustment
- tracer code solidifies the project with minimal code
- based on reality, not paper specification
- tracer code is not prototyping, it won't be discarded
- shippers packing application needs intuitive interface and complex algorithms
- prototyping enables concept testing and subsequent detailed development
- tracer code shows how to connect different components of an application.
- prototyping generate disposable code (reconnaissance)
- trace code becomes the skeleton (fire)

### Topic 13. Prototypes and Post-it Notes

- prototyping is cost-effective (compared to full-scale production)
- it helps to analyze risks and facilitate corrections
- post-it notes are great for prototyping
- prototype can ignore unimportant details
- use tracer bullet when details cannot be compromised
- prototype things that carry risk
- prototype is all about learning (lessons learned)
- 1 can use dummy data (ignore concreteness)
- 2 can have limited functionality (ignore completeness)
- 3 can crash often (ignore robustness)
- 4 can code clumsily (ignore styles)
- may implement using high-level languages
- emphasize appearance in interface prototyping
- use scripting language to combine low-level components effectively
- system architecture can be prototyped as well
- are components well defined and coupling minimized?
- does every module have access to data when it needs?
- clearly communicate that code are disposable
- avoid request for deployment
- prototype can save significant amount of time

### Topic 14. Domain Languages

- computer languages shape your approach
- pragmatics often use real-world domain language to program
- RSpec testing
- Cucumber testing
- Phoenix routes
- Ansible configuration
- internal domain language: RSpec, Phoenix
- external language: Cucumber, Ansible

### Topic 15. Estimating

- units: days | weeks | months

## 3. The Basic Tools

### Topic 16. The Power of Plain Text

- plain text is the best format for storing knowledge
- binary formats often detach data from its context
- plain text consists of printable characters
- plain text is understandable to humans
- plain text doesn't imply lack of structure
- example: HTML, JSON, YAML | HTTP, SMTP, IMAP
- plain text insure against obsolescence
- it will outlive all forms of data, period
- binary data requires knowledge of the format
- there is a difference between human-readable and human-understandable
- virtually every tool can operate on plain text
- plain text can place under version control
- (plain text file is center to unix philosophy)
- plain text for synthetic data simplifies testing
- plain text will continue be the standard
