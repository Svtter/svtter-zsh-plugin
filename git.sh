function ref() {
    git add . && git commit -m "refactor: $1"

}

function feat() {
    git add . && git commit -m "feat: $1"
}


function docs() {
    git add . && git commit -m "docs: $1"
}

function fix() {
    git add . && git commit -m "fix: $1"
}


function chore() {
    git add . && git commit -m "chore: $1"
}
