PATH=$PATH:~/installed/zig/

gacp() {
    git add . && git commit -m "$1" && git push origin main
}
