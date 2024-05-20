Function GitStatus {git status}
Set-Alias -Name gst -Value GitStatus

Function GitCheckout ([string]$branch) {git checkout $branch}
Set-Alias -Name gco -Value GitCheckout

Function GitCreateBranch([string]$branch) {
    git checkout -b $branch
    git checkout $branch
}
Set-Alias -Name gcb -Value GitCreateBranch

Function GitPull([string]$branch) {
    if ([string]::isNullOrEmpty($branch)) {
        $branch = $(git rev-parse --abbrev-ref HEAD --)[0]
    }
    git pull origin $branch
}
Set-Alias -Name ggl -Value GitPull

Function GitAddAll {git add --all}
Set-Alias -Name gaa -Value GitAddAll

Function GitPush ([string]$branch) {
    if ([string]::isNullOrEmpty($branch)) {
        $branch = $(git rev-parse --abbrev-ref HEAD --)[0]
    }
    git push origin $branch
}
Set-Alias -Name ggp -Value GitPush

Function GitFetchAll {git fetch --all --prune}
Set-Alias -Name gfa -Value GitFetchAll

Function GitDeleteBranch ([string]$branch) {git branch -D $branch}
Set-Alias -Name gbd -Value GitDeleteBranch