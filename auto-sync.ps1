# Auto-sync workspace to GitHub
cd "C:\Users\vrlolo\.openclaw\workspace"
git add -A
git commit -m "Auto-sync: $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
git push origin main