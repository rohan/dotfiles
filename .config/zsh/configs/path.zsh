# remove duplicates
typeset -U path fpath

# Homebrew
path=("/usr/local/bin" "/usr/local/sbin" $path)

# add fzf
if ! whence fzf >/dev/null && [[ -d "/usr/local/opt/fzf/bin" ]]; then
  path=("/usr/local/opt/fzf/bin" $path)
fi

# add arc if installed
[[ -d "$HOME/.phabricator/arcanist/bin" ]] && path=("$HOME/.phabricator/arcanist/bin" $path)

# add manual openssl if installed
[[ -d "/usr/local/opt/openssl/bin" ]] && path=("/usr/local/opt/openssl/bin" $path)

# add manual functions to fpath
fpath+=("${XDG_CONFIG_HOME:-$HOME/.config}/zsh/functions/")
autoload -Uz ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/functions/*
