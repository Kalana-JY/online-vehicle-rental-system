# Online Vehicle Rental System

A Java web application for managing vehicle rentals with admin, customer, owner, and staff functionalities.

## Project Status
✅ **All compilation errors fixed!**
✅ **WAR file built successfully**

## Prerequisites

1. **Java Development Kit (JDK)**: Version 21 or higher
   - Currently detected: JDK 23
   
2. **Apache Maven**: Version 3.6 or higher
   - Currently installed: Maven 3.9.12
   
3. **Apache Tomcat**: Version 9.0 or higher
   - Server needs to be configured
   
4. **MySQL Database**: Version 5.7 or higher
   - Database name: `onlinerental`
   - Default credentials in DBConnect.java:
     - Username: `root`
     - Password: `12345k`

## Database Setup

### 1. Install MySQL
If MySQL is not installed, download and install it from [MySQL Downloads](https://dev.mysql.com/downloads/installer/)

### 2. Create Database
```sql
CREATE DATABASE onlinerental CHARACTER SET utf8 COLLATE utf8_general_ci;
USE onlinerental;

-- You'll need to create tables for:
-- - Admins
-- - Customers
-- - Owners
-- - Staff
-- - Vehicles
-- - Payments
-- - Messages
-- - Drivers
```

### 3. Update Database Credentials (if needed)
If your MySQL credentials are different, update the file:
- Location: `src/main/java/com/rental/utils/DBConnect.java`
- Change `username` and `password` variables

## Build Instructions

### Option 1: Using Maven (Recommended)
```powershell
# Navigate to project directory
cd c:\Users\user\git\repository\online-vehicle-rental-system

# Clean and build the project
mvn clean package

# The WAR file will be created at:
# target/online-vehicle-rental-system.war
```

### Option 2: Using Eclipse
1. Right-click on project → Run As → Maven build
2. Goals: `clean package`
3. Click Run

## Deployment Instructions

### Method 1: Manual Deployment to Tomcat

1. **Locate Tomcat Installation**
   - Find your Tomcat installation directory (e.g., `C:\Program Files\Apache Software Foundation\Tomcat 9.0\`)

2. **Copy WAR File**
   ```powershell
   # Copy the built WAR file to Tomcat's webapps directory
   Copy-Item "target/online-vehicle-rental-system.war" "C:\Path\To\Tomcat\webapps\"
   ```

3. **Start Tomcat Server**
   ```powershell
   # Navigate to Tomcat's bin directory
   cd "C:\Path\To\Tomcat\bin"
   
   # Start the server
   .\startup.bat
   ```

4. **Access the Application**
   - Open browser and go to: `http://localhost:8080/online-vehicle-rental-system/`

### Method 2: Using Eclipse with Tomcat Plugin

1. Right-click on project → Run As → Run on Server
2. Select your configured Tomcat server
3. Click Finish

### Method 3: Using Maven Tomcat Plugin

Add this plugin to pom.xml and run:
```powershell
mvn tomcat7:run
```

## Project Structure

```
online-vehicle-rental-system/
├── src/main/
│   ├── java/com/rental/
│   │   ├── model/          # Data models (User, Vehicle, Payment, etc.)
│   │   ├── services/       # Business logic and database operations
│   │   ├── servlet/        # HTTP servlets for handling requests
│   │   └── utils/          # Utility classes (DBConnect, etc.)
│   └── webapp/
│       ├── WEB-INF/
│       │   ├── web.xml     # Servlet mappings and configuration
│       │   └── lib/        # Required JAR dependencies
│       ├── CSS/            # Stylesheets
│       ├── Images/         # Image resources
│       ├── Partials/       # Reusable JSP components
│       └── *.jsp           # JSP pages for UI
├── pom.xml                 # Maven configuration
└── target/                 # Build output directory
```

## Key Features

- **Admin Panel**: Manage vehicles, owners, customers, and staff
- **Customer Portal**: Browse and rent vehicles
- **Owner Dashboard**: List and manage owned vehicles
- **Staff Management**: Handle rental operations
- **Payment Processing**: Process rental payments
- **Messaging System**: Communication between users

## Default URLs

After deployment, you can access:

- Home Page: `http://localhost:8080/online-vehicle-rental-system/Home.jsp`
- Admin Login: `http://localhost:8080/online-vehicle-rental-system/LoginAdmin.jsp`
- Customer Login: `http://localhost:8080/online-vehicle-rental-system/customerLogin.jsp`
- Owner Login: `http://localhost:8080/online-vehicle-rental-system/ownerLogin.jsp`
- Staff Login: `http://localhost:8080/online-vehicle-rental-system/staffLogin.jsp`

## Technologies Used

- **Backend**: Java Servlets & JSP
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL
- **Build Tool**: Apache Maven
- **Server**: Apache Tomcat 9.0
- **Dependencies**:
  - javax.servlet-api 3.1.0
  - JSTL 1.2
  - MySQL Connector Java 5.1.48

## Troubleshooting

### Problem: Servlet errors or 404 errors
**Solution**: Ensure web.xml servlet mappings are correct and Tomcat is properly configured

### Problem: Database connection errors
**Solution**: 
1. Verify MySQL is running
2. Check database name is `onlinerental`
3. Verify credentials in DBConnect.java match your MySQL setup
4. Ensure MySQL is listening on port 3306

### Problem: Port 8080 already in use
**Solution**: 
1. Stop any running Tomcat instances
2. Or change Tomcat's port in `server.xml`

### Problem: Classes not found errors
**Solution**: Clean and rebuild the project: `mvn clean install`

## Next Steps

1. ✅ Dependencies configured
2. ✅ Project compiles successfully
3. ⏳ Setup MySQL database and create tables
4. ⏳ Deploy to Tomcat server
5. ⏳ Test application functionality

## Development

To make changes and rebuild:
```powershell
# Make your code changes, then:
mvn clean package

# Redeploy the WAR file to Tomcat
```

## License

[Add your license information here]

## Contact

[Add contact information here]
