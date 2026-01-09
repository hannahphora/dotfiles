if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

theme_everforest dark hard

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/hannah/.ghcup/bin $PATH # ghcup-env
