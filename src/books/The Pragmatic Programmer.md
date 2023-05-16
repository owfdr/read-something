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

- every maker start with a good set of tools
- tools become extension of maker's hand
- regularly expand your toolbox with new tools
- avoid the mistake of relying on a single tool
- this chapter emphasizes investing in your tools
- invest your time in learning the tools

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
- difference between human-readable and human-understandable
- virtually every tool can operate on plain text
- plain text can place under version control
- (plain text file is center to unix philosophy)
- data in plain text simplifies testing
- plain text is always the standard

### Topic 17. Shell Games

- good workbench is essential for woodworkers
- command shell is the workbench of programmers
- GUI-oriented programmers may question why
- missing out on full capabilities
- GUI capabilities are limited by designers
- shell can increase productivity significantly
- invest your time in learning the shell
- developer should customize their shell
- 1 color theme
- 2 prompt
- 3 aliases
- 4 command completion

### Topic 18. Power Editing

- text is the raw material of programming
- develop fluency in each editor you use
- 4% improvement can save 1 week per year
- true benefit lies in fluency without thinking (instinctive)
- can you do all these without using a mouse?
- learn the commands that make your life easier
- if you do something repetitive, find a better way
- instill it through repetition
- many editors are extendable
- search for extensions to overcome limitations
- try create your own extensions
- publish your extensions to helps others

#### Challenges

1. no more autorepeat
1. lose the mouse for a week
1. look for integrations
1. built your own extension

### Topic 19. Version Control

- undoing mistakes is crucial to us
- version control is one giant undo key
- there is much more to explore
- both a repository and a central meeting place
- (avoid sharing source files across networks)
- version control tracks all the changes you made
- provides information about changes
- helps to identify the release version
- can keep changes in a central repository
- allow programmers to work concurrently
- make sure **everything** is under version control
- you can isolate changes into a branch
- branch eliminates interference
- branch are essential to workflows
- there a thousand ways to do branching
- pick one that suits you
- version control shines in team collaboration
- worth to have a central repository
- many are open source

#### Challenges

1. do you know all the commands?
1. can you recover your laptop? (set it up)
1. explore features
1. use VCS for non-project

### Topic 20. Debugging

- the term "bug" has been used for centuries
- computers are still limited to doing what you tell them to do
- debugging is an inevitable part of programming
- sometimes it can be an emotional subject
- remember debugging is just problem solving
- focus on fixing the problem, not the blame
- first rule: don't panic
- it is crucial to stay calm
- don't waste your time on "that's impossible!"
- avoid addressing only the visible
- always try to discover the root cause
- ensure code compiles without warnings
- gather all relevant data
- third party report may lack accuracy
- tempers may raise
- you may need to interview the user
- you may need to test brutally
- reproducibility is key to bug fixing
- make it reproducible with a single command
- write failing test before fixing the code
- read the error message carefully
- use debugger if it is a bad result
- verify the incorrect value in the debugger
- know how to navigate up and down the call stack
- keep pen and paper nearby
- may use a binary chop for long stacks
- when crashes when on a particular dataset
- binary chop to pinpoint the specific input causing the crash
- binary chop to identify the specific change introduced the bug
- binary chop is often known as binary search
- faster due to divide and conquer (O log n)
- can also applied to debugging
- select middle stack to see where the bug arises
- splitting the dataset to find the cause
- chopping the release history to find the problem (can be automated)
- stack trace has limitations in event-based scenarios
- tracing statements are effective when time is a factor
- add each statements as you descend down the call tree
- adhere to a consistent format for automated parsing
- example: open and close in resource leak
- explaining a problem to rubber duck can help to identify the cause
- verbalization leads to new insights
- the code you are debugging may be a mixture of application code
- troubleshoot your code first
- a cautionary tale: "select" isn't broken
- be cautious with upgrades
- when surprised by a bug, reevaluate your assumptions
- prove it until you can find the cause
- evaluate detection shortcomings, update tests accordingly
- improve parameter checking if caused by bad data propagation
- check for other vulnerabilities and then fix them
- identify ways to make future bug fixes easier
- discuss the bug with the entire team

#### Debugging Checklist

- is the problem an underlying bug or merely a symptom?
- is the bug really not in your code?
- can you explain the problem to others?
- are the tests complete enough?
- can the same bug exists elsewhere?
