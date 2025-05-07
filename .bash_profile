PATH=$PATH:~/installed/gcc/bin/
PATH=$PATH:~/installed/nvim/bin/
PATH=$PATH:~/installed/ripgrep/

gacp() {
    git add . && git commit -m "$1" && git push origin main
}
