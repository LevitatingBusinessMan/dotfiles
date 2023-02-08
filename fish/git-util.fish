function _git_branch_name
    set -l branch (git symbolic-ref --quiet HEAD 2>/dev/null)
    if set -q branch[1]
        echo (string replace -r '^refs/heads/' '' $branch)
    else
        echo (git rev-parse --short HEAD 2>/dev/null)
    end
end

function _git_is_dirty
    not command git diff-index --cached --quiet HEAD -- &>/dev/null
    or not command git diff --no-ext-diff --quiet --exit-code &>/dev/null
end

function _git_is_repo
    type -q git
    or return 1
    git rev-parse --git-dir >/dev/null 2>&1
end
