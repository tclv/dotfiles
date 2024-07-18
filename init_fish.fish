fish_add_path "~/.local/bin"
fish_add_path "/usr/local/bin"

# Oh my fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

. ~/.asdf/plugins/java/set-java-home.fish
