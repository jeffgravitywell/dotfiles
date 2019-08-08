# NAVIGATION
"/" is search and "n" searches again

"j" and "k" move up and down
"h" and "l" move left and right
"shift-h", "shift-m", "shift-l" - go to the high, middle and lower part of the screen
"ctrl-f" forward one screen, "ctrl-b" is back one screen
"ctrl-e", "ctrl-y" move up and down the window

gg - top of file
Gzz - Goes to the bottom and then centers the screen
zz - goes to the middle of the screen
1G goes to top of file
G goes to bottom of file
"z." moves to the middle of the screen

gt - next tab
gT - previous tab

^ - goes to the start of the line (first character, doesn't end in Insert mode)
0 - goes to the start of the first column (doesn't end in Insert mode)
$  - go to line end
6$ - go to end of line 6 times
{ or } move around by paragraph

I - go to the beginning of the first non-whitespace character in a line
A - go to the end of the line and go into Insert mode
o, O - create a new line above or below the current line and go into Insert mode
a - insert mode right after the current cursor
gk/gj - move up and down by screen lines

g, and g; step through changes


# FOLDING
zo - open a fold
zc - close a fold
zr - open folds by one level across the buffer
zm - close folds by one level across the buffer
zR - open all folds
zM - close all folds

https://vim.fandom.com/wiki/Folding


# WORD ACTIONS
i - in
u - undo

w4db - for each word, delete 4 words backwards

gU - "go uppercase"
gu - "go lowercase"
gUaW - uppercase a word
gUU or gU$  - upppercase to the end of the line

daw - delete a word
dt  - delete 'til
ciw - change in word
ci) - change in parenthesis

yy or Y - copy / yank whole line
p  - put / paste
dd - delete

:%s/word1/word2  - find and replace
:%s/word1/word2/g - global find and replace

:earlier 2min  - goes to the file 2 minutes ago


## MARKDOWN
zr: reduces fold level throughout the buffer
zR: opens all folds
zm: increases fold level throughout the buffer
zM: folds everything all the way
za: open a fold your cursor is on
zA: open a fold your cursor is on recursively
zc: close a fold your cursor is on
zC: close a fold your cursor is on recursively


## SEARCH NAVIGATION
/ - search for word following slash
* - search forward for the word under the cursor
# - search backward for the word under the cursor


## SURROUND SYNTAX
cs (surround syntax)
cs"' changes " to '
To remove the delimiters entirely, press ds"
wrap the entire line in parentheses with yssb or yss)
ysiw<tag> - yank, substitute in work (tag, in this case)


## SPLITTING WINDOWS
<C-w>v command to split the window vertically
<C-w>o command to close windows, keeping ONLY the current window open
<C-w>c command to close the window targeted


# WORKING WITH FILES
:tabnew filename - creates a new file in a new tab
:tabclose  - closes the current tab

## MACROS
q<n> to put the macro in register n
:reg to see register contents
hit q again to stop recording

## TASKPAPER 
\td     Mark task as done
\tx     Mark task as cancelled
\tt     Mark task as today
\tD     Archive @done items
\tX     Show tasks marked as cancelled
\tT     Show tasks marked as today
\t/     Search for items including keyword
\ts     Search for items including tag
\tp     Fold all projects
\t.     Fold all notes
\tP     Focus on the current project
\tj     Go to next project
\tk     Go to previous project
\tg     Go to specified project
\tm     Move task to specified project

https://github.com/davidoc/taskpaper.vim

## OPENING FILES
Using FZF, hit CTRL-T to open in a new tab
Using MRU, hit T to open in a new tab

## MOVING WITH MARKS
mm  - set a mark and call it "m"
`{a-z} = to return there
'{a-z} = to return to the first character of the mark
`` goes to previous mark (last resting place of the cursor)
