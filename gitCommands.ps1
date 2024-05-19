Function GitStatus {git status}
Set-Alias -Name gst -Value GitStatus

Function GitCheckout ([string]$branch) {git checkout $branch}
Set-Alias -Name gco -Value GitCheckout

Function GitCreateBranch([string]$branch) {git checkout -b $branch}
Set-Alias -Name gcb -Value GitCreateBranch

Function GitPull([string]$branch) {
    $CurrentBranch = $(git rev-parse --abbrev-ref HEAD --)[0]
    if ($null -eq $branch) {
        git pull origin $CurrentBranch
    } else {
        git pull origin $branch
    }
}
Set-Alias -Name ggl -Value GitPull

Function GitAddAll {git add --all}
Set-Alias -Name gaa -Value GitAddAll

Function GitPush ([string]$branch) {
    $CurrentBranch = $(git rev-parse --abbrev-ref HEAD --)[0] 
    if ($null -eq $branch) {
        git push origin $CurrentBranch
    } else {
        git push origin $branch
    }
}
Set-Alias -Name ggp -Value GitPush