function export_app() {
    brew services stop --all
    brew bundle dump --file="$HOMEBREW_BUNDLE_FILE_PATH" --force
    echo 'Brew apps exported!'

    ls -1 /usr/local/lib/node_modules | grep -v npm >"$DOTFILES_PATH/langs/js/global_modules.txt"
    echo 'NPM apps exported!'
}

function import_apps() {
    brew services stop --all
    brew bundle --file="$HOMEBREW_BUNDLE_FILE_PATH" --force
    echo 'Brew apps imported!'
}