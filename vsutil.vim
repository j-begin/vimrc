"Collection of personal VimScript utilities to help quickly implement new
"features in Vim.

"Concatenates two paths together with only one slash between them.
function g:ConcatPaths(a, b)
	let clean_a = substitute(a:a, "/*$", "", "g")
	let clean_b = substitute(a:b, "/*$", "", "g")
	let clean_b = substitute(clean_b, "^/*", "", "g")
	return clean_a.."/"..clean_b
endfunction

"Lists all files recursively within a particular directory. If `dir_name` is
"not used, the function list all files from the current working directory.
"Always returns an array of strings.
function g:GetFileList(start_dir = "")
	let file_list = []
	let dir_name = ""

	"Use CWD if no argument is given.
	if len(a:start_dir) > 0
		let dir_name = a:start_dir
	else
		let dir_name = getcwd()
	endif

	"Only do recursive checking if the directory actually exists.
	if isdirectory(dir_name)
		for file in readdir(dir_name)
			if isdirectory(ConcatPaths(dir_name, file))
				for subfile in GetFileList(ConcatPaths(dir_name, file))
					call add(file_list, subfile)
				endfor
			else
				call add(file_list, ConcatPaths(dir_name, file))
			endif
		endfor
	endif

	return file_list
endfunction

"Custom command completion list function. Displays all files recursively.
function g:FuzzyFileCommandCompletion(argument, command, location)
	let files = GetFileList()
	let matches = matchfuzzy(files, a:argument)
	if len(matches) > 0
		return matches
	else
		return []
	endif
endfunction

"Opens a list of files in independent tabs.
function g:OpenFilesInTabs(files)
	for file in a:files
		execute "$tabnew "..file
	endfor
endfunction

