# if [[ -d "$HOME/.asdf" ]]; then
#     . "$HOME/.asdf/asdf.sh"
#     fpath+="$ASDF_DIR/completions"
# fi
if hash "asdf" >/dev/null 2>&1; then
  . $(brew --prefix asdf)/libexec/asdf.sh
fi