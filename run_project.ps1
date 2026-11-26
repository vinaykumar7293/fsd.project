Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  Starting MarkMirror: ResultRadar Rush Full-Stack App" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan

Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd backend; python app.py"
Start-Sleep -Seconds 2
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd frontend; npm.cmd run dev"

Write-Host "`nApplication launched successfully!" -ForegroundColor Green
Write-Host "Frontend: http://localhost:3000" -ForegroundColor Yellow
Write-Host "Backend:  http://localhost:5000" -ForegroundColor Yellow
