# ================================================
# Quick Start Script for Online Vehicle Rental System
# ================================================

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Online Vehicle Rental System - Quick Start" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Check prerequisites
Write-Host "[1/5] Checking prerequisites..." -ForegroundColor Yellow

# Check Java
$javaVersion = java -version 2>&1 | Select-String "version"
if ($javaVersion) {
    Write-Host "  ✓ Java is installed" -ForegroundColor Green
    Write-Host "    $javaVersion" -ForegroundColor Gray
} else {
    Write-Host "  ✗ Java is NOT installed!" -ForegroundColor Red
    Write-Host "    Please install JDK 21 or higher" -ForegroundColor Red
    exit 1
}

# Check Maven
$mavenVersion = mvn --version 2>&1 | Select-String "Apache Maven"
if ($mavenVersion) {
    Write-Host "  ✓ Maven is installed" -ForegroundColor Green
    Write-Host "    $mavenVersion" -ForegroundColor Gray
} else {
    Write-Host "  ✗ Maven is NOT installed!" -ForegroundColor Red
    exit 1
}

# Check MySQL
Write-Host ""
Write-Host "[2/5] Checking MySQL connection..." -ForegroundColor Yellow
$mysqlRunning = Get-Service -Name "MySQL*" -ErrorAction SilentlyContinue | Where-Object {$_.Status -eq "Running"}
if ($mysqlRunning) {
    Write-Host "  ✓ MySQL service is running" -ForegroundColor Green
} else {
    Write-Host "  ⚠ MySQL service not detected or not running" -ForegroundColor Yellow
    Write-Host "    Please ensure MySQL is installed and running" -ForegroundColor Yellow
    Write-Host "    Then run the database-setup.sql script" -ForegroundColor Yellow
}

# Step 2: Build the project
Write-Host ""
Write-Host "[3/5] Building the project..." -ForegroundColor Yellow
$buildResult = mvn clean package -DskipTests 2>&1
if ($LASTEXITCODE -eq 0) {
    Write-Host "  ✓ Build successful!" -ForegroundColor Green
    Write-Host "    WAR file created at: target\online-vehicle-rental-system.war" -ForegroundColor Gray
} else {
    Write-Host "  ✗ Build failed!" -ForegroundColor Red
    Write-Host $buildResult
    exit 1
}

# Step 3: Check for Tomcat
Write-Host ""
Write-Host "[4/5] Looking for Tomcat installation..." -ForegroundColor Yellow

$possibleTomcatPaths = @(
    "C:\Program Files\Apache Software Foundation\Tomcat 9.0",
    "C:\Program Files\Apache Software Foundation\Tomcat 10.0",
    "C:\Program Files (x86)\Apache Software Foundation\Tomcat 9.0",
    "C:\apache-tomcat-9.0*",
    "C:\tomcat*",
    "$env:CATALINA_HOME"
)

$tomcatPath = $null
foreach ($path in $possibleTomcatPaths) {
    if (Test-Path $path) {
        $tomcatPath = $path
        break
    }
}

if ($tomcatPath) {
    Write-Host "  ✓ Tomcat found at: $tomcatPath" -ForegroundColor Green
    
    # Copy WAR to Tomcat
    Write-Host ""
    Write-Host "[5/5] Deploying to Tomcat..." -ForegroundColor Yellow
    
    $webappsPath = Join-Path $tomcatPath "webapps"
    $warSource = "target\online-vehicle-rental-system.war"
    $warDest = Join-Path $webappsPath "online-vehicle-rental-system.war"
    
    if (Test-Path $warSource) {
        try {
            Copy-Item $warSource $warDest -Force
            Write-Host "  ✓ WAR file deployed successfully!" -ForegroundColor Green
            Write-Host "    Location: $warDest" -ForegroundColor Gray
            
            Write-Host ""
            Write-Host "========================================" -ForegroundColor Green
            Write-Host "Deployment Complete!" -ForegroundColor Green
            Write-Host "========================================" -ForegroundColor Green
            Write-Host ""
            Write-Host "Next Steps:" -ForegroundColor Cyan
            Write-Host "1. Start Tomcat server:" -ForegroundColor White
            Write-Host "   cd '$tomcatPath\bin'" -ForegroundColor Gray
            Write-Host "   .\startup.bat" -ForegroundColor Gray
            Write-Host ""
            Write-Host "2. Setup database:" -ForegroundColor White
            Write-Host "   - Run MySQL and execute: database-setup.sql" -ForegroundColor Gray
            Write-Host ""
            Write-Host "3. Access the application:" -ForegroundColor White
            Write-Host "   http://localhost:8080/online-vehicle-rental-system/" -ForegroundColor Gray
            Write-Host ""
            
            # Ask if user wants to start Tomcat
            $response = Read-Host "Would you like to start Tomcat now? (Y/N)"
            if ($response -eq 'Y' -or $response -eq 'y') {
                $startupScript = Join-Path $tomcatPath "bin\startup.bat"
                if (Test-Path $startupScript) {
                    Start-Process $startupScript
                    Write-Host "  ✓ Tomcat is starting..." -ForegroundColor Green
                    Start-Sleep -Seconds 5
                    Write-Host "  ✓ Opening browser..." -ForegroundColor Green
                    Start-Process "http://localhost:8080/online-vehicle-rental-system/"
                }
            }
        } catch {
            Write-Host "  ✗ Failed to copy WAR file: $_" -ForegroundColor Red
        }
    } else {
        Write-Host "  ✗ WAR file not found at: $warSource" -ForegroundColor Red
    }
    
} else {
    Write-Host "  ⚠ Tomcat not found automatically" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Manual Deployment Steps:" -ForegroundColor Cyan
    Write-Host "1. Copy the WAR file to your Tomcat webapps directory:" -ForegroundColor White
    Write-Host "   target\online-vehicle-rental-system.war -> [TOMCAT_HOME]\webapps\" -ForegroundColor Gray
    Write-Host ""
    Write-Host "2. Start Tomcat server" -ForegroundColor White
    Write-Host ""
    Write-Host "3. Access: http://localhost:8080/online-vehicle-rental-system/" -ForegroundColor White
}

Write-Host ""
Write-Host "For detailed instructions, see README.md" -ForegroundColor Cyan
Write-Host ""
