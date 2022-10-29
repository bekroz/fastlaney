brew_install() {
    echo "Installing $1 with brew..."
    if brew list $1 &>/dev/null; then
        echo "✅ ${1} is already installed"
    else
        brew install $1 && echo "✅ $1 is installed"
    fi
}

brew_install "fastlane"
