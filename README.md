Here’s a step-by-step guide to install **Terraform** and the **AWS CLI** on **Windows 11**:  

---

### **1. Install Terraform**

Terraform is an Infrastructure-as-Code (IaC) tool used for managing cloud infrastructure.  

#### **Steps**:
1. **Download Terraform**:  
   - Go to the [Terraform official website](https://www.terraform.io/downloads).  
   - Download the Windows 64-bit ZIP file.  

2. **Extract the ZIP File**:  
   - Extract the downloaded ZIP file to a folder (e.g., `C:\terraform`).  

3. **Add Terraform to the System PATH**:  
   - Open **Start Menu**, search for "Environment Variables," and select "Edit the system environment variables."  
   - Click **Environment Variables** under the System Properties dialog.  
   - Under **System variables**, select `Path` and click **Edit**.  
   - Click **New** and add the folder path where you extracted Terraform (e.g., `C:\terraform`).  
   - Click **OK** to save changes.  

4. **Verify Installation**:  
   - Open Command Prompt or PowerShell and type:  
     ```bash
     terraform --version
     ```
   - If installed correctly, the version of Terraform will be displayed.

---

### **2. Install AWS CLI**  

The AWS CLI is a command-line tool to interact with AWS services.  

#### **Steps**:
1. **Download AWS CLI**:  
   - Go to the [AWS CLI official website](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html).  
   - Download the MSI installer for Windows.  

2. **Run the Installer**:  
   - Double-click the downloaded MSI file.  
   - Follow the installation wizard to complete the process.  

3. **Verify Installation**:  
   - Open Command Prompt or PowerShell and type:  
     ```bash
     aws --version
     ```
   - It should display the installed version of the AWS CLI.  

---

### **Optional: Configure AWS CLI**
1. **Set Up AWS CLI**:  
   - Open Command Prompt or PowerShell and run:  
     ```bash
     aws configure
     ```
   - Enter your AWS Access Key, Secret Key, Region, and output format when prompted.  

2. **Test AWS CLI**:  
   - Run a simple command to verify connectivity:  
     ```bash
     aws s3 ls
     ```
   - This lists the S3 buckets in your AWS account if configured correctly.  

---

With these steps, you should have both Terraform and the AWS CLI installed and ready to use on Windows 11! Let me know if you face any issues.
