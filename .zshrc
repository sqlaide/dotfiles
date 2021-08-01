
source /home/sarbmeet/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /home/sarbmeet/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /home/sarbmeet/.zsh/completion.zsh


# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist
source /home/sarbmeet/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/sarbmeet/.zsh/history.zsh
alias ls='ls -G'
alias ll='ls -l -G'

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

eval "$(starship init zsh)"

