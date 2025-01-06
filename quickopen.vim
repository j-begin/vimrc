"Implements the command `QuickTabs` that opens multiple files in independent
"tabs. Uses fuzzy file searching.

command -nargs=+ -complete=customlist,FuzzyFileCommandCompletion QuickTabs :call OpenFilesInTabs(split("<args>", " "))
command -nargs=1 -complete=customlist,FuzzyFileCommandCompletion FuzzyEdit :e <args>

