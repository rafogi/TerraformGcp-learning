# Terraform GCP Kubernetes Deployment with GitHub Actions

This project demonstrates deploying a Node.js application to Google Kubernetes Engine (GKE) using Terraform for infrastructure provisioning and GitHub Actions for CI/CD automation.

---

## **Project Structure**
. ├── nodeapp/ │ ├── Dockerfile # Dockerfile for building the Node.js application image │ ├── package.json # Node.js dependencies │ ├── app.js # Main application file ├── k8s/ │ ├── deploy.yml # Kubernetes Deployment manifest │ ├── service.yml # Kubernetes Service manifest ├── .github/ │ └── workflows/ │ └── GAdeploy.yml # GitHub Actions workflow for CI/CD ├── README.md # Project documentation


---

## **Features**

- **Terraform**: Used to provision GKE clusters and other Google Cloud resources.
- **Docker**: Builds a container image for the Node.js application.
- **Google Kubernetes Engine (GKE)**: Hosts the application in a Kubernetes cluster.
- **GitHub Actions**: Automates the CI/CD pipeline for building, pushing, and deploying the application.

---

## **Setup Instructions**

### **1. Prerequisites**
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- [Terraform](https://developer.hashicorp.com/terraform/tutorials)
- A Google Cloud project with billing enabled.
- A service account with the following roles:
  - `roles/container.admin`
  - `roles/artifactregistry.writer`
  - `roles/iam.serviceAccountUser`

---

### **2. Clone the Repository**
```bash
git clone https://github.com/rafogi/TerraformGcp-learning.git
cd TerraformGcp-learning

---

### **3. Set up github actions**
Add the service account key as a secret in your GitHub repository:

Go to Settings > Secrets and variables > Actions.
Add a new secret named GCP_SA_KEY and paste the JSON content of<vscode_annotation details='%5B%7B%22title%22%3A%22hardcoded-credentials%22%2C%22description%22%3A%22Embedding%20credentials%20in%20source%20code%20risks%20unauthorized%20access%22%7D%5D'> your</vscode_annotation> service account key.
Ensure the GAdeploy.yml workflow file is correctly configured.

### **4. Deploy the application**

git add .
git commit -m "Trigger deployment"
git push origin main