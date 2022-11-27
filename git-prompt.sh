#Terminal
alias c='clear'

# Github
alias com='git checkout main && git pull origin main'
alias co='git checkout'
alias pom='git pull origin main'

alias pull='git pull'
alias push='git push'
alias pnb='git push -u origin HEAD'

alias stash='git stash -u'
alias apply='git stash apply'

alias branch='git branch'

#Package manager
set_env() {
	if command -v 'yarn start'; then
		packageManager='yarn start'
		install='yarn install'
	else
		# run dev if available
		if [[ $(npm run | grep "^  dev" | wc -l) > 0 ]]; then
			packageManager='npm run dev'
		else
			packageManager='npm start'
		fi
		install='npm install'
	fi
} && set_env

alias rs=$packageManager
alias i=$install
