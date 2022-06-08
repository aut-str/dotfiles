autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " _-.,/:;@"
zstyle ':zle:*' word-style unspecified

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
