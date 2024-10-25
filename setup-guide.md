# Microsoft Intune Setup for Managing 10 Laptops

This guide walks you through setting up 10 laptops with a non-setup Windows installation, linking each to a unique Microsoft account, and configuring management through Microsoft Intune for app installation, deletion, and updates.

---

## Prerequisites
1. **Microsoft Intune** subscription.
2. **Azure Active Directory (AAD)** access.
3. **Unique email addresses** for each laptop in the format `laptop1@laptops.org.com`.

---

## Step 1: Create User Accounts in Azure AD
To link each laptop to a specific account, create individual Azure AD user accounts.

1. **Sign in to the Azure Portal**: Go to [Azure Portal](https://portal.azure.com).
2. **Access Azure Active Directory**:
   - In the left menu, select **Azure Active Directory** (AAD).
3. **Create User Accounts**:
   - Go to **Users** > **+ New User**.
   - For each laptop, create a user account with the naming convention `laptop1@laptops.org.com`, `laptop2@laptops.org.com`, etc.
   - Assign each user an **Intune license**:
     - In the **Licenses** tab of each user’s profile, assign the Microsoft Intune license.
4. Repeat these steps for all 10 accounts.

---

## Step 2: Configure Microsoft Intune
Set up Microsoft Intune to manage device enrollments and device management policies.

1. **Access the Intune Admin Center**:
   - Go to the [Intune Admin Center](https://endpoint.microsoft.com/).
2. **Enable Automatic Enrollment**:
   - Go to **Devices** > **Enroll devices** > **Windows enrollment**.
   - Enable **MDM Automatic Enrollment** to allow automatic enrollment in Intune.
3. **Configure Device Enrollment Restrictions**:
   - Go to **Devices** > **Enroll devices** > **Enrollment restrictions**.
   - Set any **restrictions** for allowed or blocked devices based on your needs, e.g., blocking personal devices from enrollment.

---

## Step 3: Configure Windows Autopilot Profiles (Optional)
Windows Autopilot simplifies the initial setup by configuring each laptop according to predefined settings.

1. **Access Autopilot Settings in Intune**:
   - In the Intune Admin Center, go to **Devices** > **Windows** > **Windows enrollment** > **Deployment profiles**.
2. **Create a Deployment Profile**:
   - Select **+ Create profile**, choose **Windows PC** as the device type, and configure the profile name and description.
   - Configure setup options like **User-Driven Mode** (if users will set up the device) or **Self-Deploying Mode** (for fully automated setup).
   - Set any additional settings (e.g., language, privacy settings).
3. **Assign the Profile**:
   - In **Assignments**, specify the users or devices to apply this profile to (e.g., the accounts you created in Step 1).

---

## Step 4: Enroll Devices in Intune
Now, start each laptop, link it to its assigned AAD account, and complete the Intune enrollment.

1. **Start the Laptop**:
   - Power on each laptop. You should see the initial Windows setup screen.
2. **Sign In with Assigned AAD Account**:
   - Use the assigned account for each laptop (e.g., `laptop1@laptops.org.com`).
   - During setup, Windows will prompt you to enroll the device in your organization’s MDM. Confirm enrollment in Microsoft Intune.
3. **Complete Setup**:
   - Follow the on-screen instructions to finish the Windows setup, and ensure the device is enrolled in Intune.

---

## Step 5: Manage Devices in Intune
With all laptops now enrolled, you can manage apps, updates, and policies through Intune.

1. **View Enrolled Devices**:
   - In the Intune Admin Center, go to **Devices**. You should see all 10 laptops listed.
2. **Install, Update, and Delete Applications**:
   - Under **Apps**, select the applications you want to deploy, and assign them to devices or groups.
   - For any updates or deletions, adjust the app policies in this section.
3. **Apply Device Policies**:
   - Under **Devices** > **Configuration profiles**, set security, compliance, and update policies.
   - Assign these policies to the laptops for consistent settings and security across all devices.

---

## Summary
Following these steps, each laptop is now:
- Linked to a unique account and managed through Microsoft Intune.
- Set up for centralized application management, updates, and policy enforcement.
  
With this setup, you can effectively manage all 10 devices remotely and ensure they remain consistent and secure.

--- 
