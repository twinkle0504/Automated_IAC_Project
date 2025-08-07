🛡️ Automated IaC Security Assessment using KICS & DefectDojo
This project provides a fully automated Jenkins pipeline to scan Terraform-based Infrastructure as Code (IaC) using Checkmarx KICS and upload the scan results to DefectDojo for vulnerability tracking and dashboard visualization.
________________________________________
⚙️ Overview
This solution is designed for:
•	Scanning Terraform code for misconfigurations and vulnerabilities using KICS
•	Generating reports in HTML, JSON, and SARIF formats
•	Uploading the SARIF report to DefectDojo via API
•	Archiving scan results in Jenkins workspace
________________________________________
📁 Project Structure
Automated_IAC_Project/
└── IAC_Project/
    └── terraform/
        ├── main.tf
        └── kics-results/
            ├── results.html
            ├── results.json
            └── results.sarif
________________________________________
🔧 Prerequisites
1.	Jenkins installed and configured
2.	Docker installed on Jenkins host
3.	DefectDojo running locally at http://localhost:9000
4.	DefectDojo API Token (stored securely)
5.	GitHub repository with your Terraform code
________________________________________
🚀 Jenkins Pipeline Explanation
1. Checkout Stage
•	Pulls source code from GitHub repository
2. KICS Scan Stage
•	Runs a KICS scan on Terraform files using Docker
•	Generates reports in html, json, and sarif format
3. Upload to DefectDojo Stage
•	Uploads the results.sarif file to DefectDojo using a curl API call
4. Artifact Archival
•	Archives all files in kics-results folder
•	Allows download from Jenkins UI for offline use
________________________________________
🚪 Environment Variables
Ensure these are configured in Jenkins:
•	TF_IN_AUTOMATION=true
•	DEFECTDOJO_API_TOKEN stored in Jenkins credentials securely
________________________________________
🌐 Accessing DefectDojo Dashboard
•	Open: http://localhost:9000
•	Login as: admin or your configured user
•	Navigate to your Product > Engagement > Findings to view scan results
________________________________________
📝 Future Enhancements
•	Automatically create Product/Engagement/Test via DefectDojo API
•	Trigger notifications to Slack/Email
•	Schedule daily or weekly scans
•	Support multiple IaC tools (CloudFormation, Helm, etc.)
________________________________________


🛡️ Automated IaC Security Assessment using KICS & DefectDojo

This project provides a fully automated Jenkins pipeline to scan Terraform-based Infrastructure as Code (IaC) using Checkmarx KICS and upload the scan results to DefectDojo for vulnerability tracking and dashboard visualization.

⚙️ Overview

This solution is designed for:

Scanning Terraform code for misconfigurations and vulnerabilities using KICS

Generating reports in HTML, JSON, and SARIF formats

Uploading the SARIF report to DefectDojo via API

Archiving scan results in Jenkins workspace

📁 Project Structure

Automated_IAC_Project/
└── IAC_Project/
    └── terraform/
        ├── main.tf
        └── kics-results/
            ├── results.html
            ├── results.json
            └── results.sarif

🔧 Prerequisites

Jenkins installed and configured

Docker installed on Jenkins host

DefectDojo running locally at http://localhost:9000

DefectDojo API Token (stored securely)

GitHub repository with your Terraform code

🚀 Jenkins Pipeline Explanation

1. Checkout Stage

Pulls source code from GitHub repository

2. KICS Scan Stage

Runs a KICS scan on Terraform files using Docker

Generates reports in html, json, and sarif format


3. Upload to DefectDojo Stage

Uploads the results.sarif file to DefectDojo using a curl API call

4. Artifact Archival

Archives all files in kics-results folder

Allows download from Jenkins UI for offline use



🌐 Accessing DefectDojo Dashboard

Open: http://localhost:9000

Login as: admin or your configured user

Navigate to your Product > Engagement > Findings to view scan results

📝 Future Enhancements

Automatically create Product/Engagement/Test via DefectDojo API

Trigger notifications to Slack/Email

Schedule daily or weekly scans

Support multiple IaC tools (CloudFormation, Helm, etc.)

✨ Author

Twinkle HedaooGitHub: twinkle0504Email: twinklehedaoo@gmail.com
