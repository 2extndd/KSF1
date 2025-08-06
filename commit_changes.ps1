Write-Host "Committing changes to GitHub..." -ForegroundColor Green

# Check if git is available
try {
    $gitVersion = git --version
    Write-Host "Git found: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "Git is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Git from https://git-scm.com/" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

# Initialize git repository if not already done
if (-not (Test-Path ".git")) {
    Write-Host "Initializing git repository..." -ForegroundColor Green
    git init
}

# Add all files
Write-Host "Adding all files..." -ForegroundColor Green
git add .

# Commit changes
Write-Host "Committing changes..." -ForegroundColor Green
git commit -m "Update: Latest changes to Kleinanzeigen Searcher project"

# Add remote repository if not already added
$remotes = git remote -v
if ($remotes -notmatch "origin") {
    Write-Host "Adding remote repository..." -ForegroundColor Green
    git remote add origin https://github.com/2extndd/KSF1.git
}

# Set branch to main
Write-Host "Setting branch to main..." -ForegroundColor Green
git branch -M main

# Push to GitHub
Write-Host "Pushing to GitHub..." -ForegroundColor Green
git push -u origin main

Write-Host "Done! Changes have been committed and pushed to GitHub." -ForegroundColor Green
Read-Host "Press Enter to exit" 