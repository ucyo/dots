function mux -w tmuxinator -d "Enhanced tmuxinator with fuzzy completion menu"
	if test (count $argv) -gt 0
		tmuxinator $argv
	else
		tmuxinator completions start | fzf | xargs tmuxinator start
	end
end
