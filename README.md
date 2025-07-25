# The Cuis Book
A book about Cuis Smalltalk. A community effort to bring documentation
to people new to Smalltalk and even computer programming. The book
comes in three parts.

The book includes examples and exercises. The solutions to the
exercises are in the annexes. We encourage writers to provide both
examples and exercises with solutions in the annexes.

HTML - https://DrCuis.github.io/TheCuisBook/

PDF - https://github.com/DrCuis/TheCuisBook/releases


## License 

The contents of this book are protected under Creative Commons
[Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/)

# Notes to the writers
The book is written with the GNU Texinfo software. It is the
documentation package of the GNU project. It is a well-maintained and
documented project. Documentation written with Texinfo can be converted
to info, PDF, HTML, docbook, and text formats. We provide a `makeBook.sh`
script to output HTML and PDF.

## Documentation
The Texinfo format is mainly pure text. Tagging is done with @
commands, for example, `@strong{strong}` or
`@url{http://cuis-smalltalk.org}`

To learn more about the Texinfo format:
  * [Ref. card letter size](http://git.savannah.gnu.org/cgit/texinfo.git/plain/doc/refcard/txirefcard.pdf) or [Ref. card A4 size](http://git.savannah.gnu.org/cgit/texinfo.git/plain/doc/refcard/txirefcard-a4.pdf)
  * [GNU Texinfo manual](https://www.gnu.org/software/texinfo/manual/texinfo/)


## TODO

* So far, the current index mixes both concepts and methods.  It would
be nicer to have two separate indexes: one for the concepts and
another one for the methods.

## Writing documentation

### General recommendations
**Indentation.** Indent with 0, 3, 6, etc spaces when writing code. Do
not use tabs unless the text editor converts them to spaces.

**Index.** Index when important concepts are explained. We write index
entries in lowercase! Insert an index just after a section title, and just
before a paragraph. The command to use is `@cindex` for the conceptual
index: `@cindex tools @subentry workspace`

Regarding indexing messages, here is the rule:

  * When the message name is meaningful, index with the message name
    itself with the appropriate tag. For example `@cindex number
    @subentry @method{isPrime}`
    
  * When the message name is not meaningful enough or too long,
    index with a meaningful term. For example, `@cindex number @subentry as
    words` for the message printStringWords; or `@cindex number @subentry base`
    for the message printStringBase:

### Macros and commands to use
We defined a few macros too. Of course, standard Texinfo commands are
used. You should look at the written documentation to see when and how
to use them.

**@cuis{}.** To name Cuis-Smalltalk everywhere it is necessary

**@vm{}.** For Virtual Machine

**@class{Object}.** To cite a class

**@method{collect:}.** To cite a method

**@msg{collect:}.** to cite a message (will render as #collect:)

**@smalltalk{5 factorial}.** To cite a portion of Smalltalk code in a
flow of text

**@kbd{Ctrl-A}.** To name a keyboard shortcut

**@label{resize...}.** To name a menu entry or a button label

**@dfn{Workspace}.** To emphasize a new term when it is first
defined. Use only once.

**@clicksequence{}** To describe a click sequence, for example:

`...@clicksequence{Background click @click{} Open... @click{}
Workspace}...`

**@smalltalkExample{smalltalk code}.** To display in its own block
environment an example of Smalltalk code. Use this when writing an
example that doesn't need to be added to the list of examples nor
referenced from elsewhere.

`@smalltalkExemple{@{1 . 2 . 3 @} collect: [:x |
   x @@ 3]}`

**@smalltalkExampleCaption{caption,uniqueLabel,smalltalk code}.** To
display in its own block environment an example of Smalltalk code. A
caption is added below the example. The uniqueLabel is a reference to
be used elsewhere with `@ref{uniqueLabel}`. The example will be added to
the list of examples in the annexes.

**@exercise{caption,uniqueLabel,text}.** To display in its own block
environment an exercise. The exercises are compiled in the annexes, and
the resolved exercise must be added to the E-Exercises annex too.

**@figure{caption,filename,width}.** Add a centered image with a
caption with the given width in cm. The filename (without path) must
be located in the img folder, alongside the source .texinfo file that
inserted this command.

**@button{filename}.** To insert a button (0.5 cm width}

**@icon{filename}.** To insert an icon (1 cm width)

**@cuisNote{aNote}.** Display a highlighted note in a frame

### Tips when using a macro
TO GET... | ...WRITE
----------|----------
@ | @@
{ (in a macro) | @{
} (in a macro) | @}
, (in a macro with multiple arguments) | @comma{}


### Compile the documentation
To compile the documentation, you need to install the Texinfo package
and PDFLatex. Texinfo is shipped with all GNU/Linux
distributions. There are packages for other systems.

To compile, invoke the build script, for example: `makeBook en pdf`
