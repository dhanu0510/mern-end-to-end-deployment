# MERN Stack Deployment with Jenkins, Terraform, and AWS EKS

## Overview

This project automates the deployment of a full-stack MERN application using Jenkins for CI/CD and Terraform for Infrastructure as Code (IAC). It utilizes AWS services including an Amazon EKS (Elastic Kubernetes Service) cluster for container orchestration. The deployment process is streamlined into separate pipelines for the backend and frontend services.

## Features

- **Infrastructure as Code**: Deployed AWS infrastructure using Terraform.
- **CI/CD Pipelines**: Jenkins pipelines for continuous integration and deployment.
- **EKS Cluster**: Kubernetes cluster managed on AWS to handle scalable deployment.
- **Automated Deployment**: Separate pipelines for frontend (React) and backend (Node.js + Express) applications.
- **AWS Services**: Uses various AWS services like VPC, subnets, security groups, EKS, and IAM.

## Tech Stack

- **Frontend**: React
- **Backend**: Node.js, Express.js
- **Database**: MongoDB
- **Infrastructure**: AWS (EKS, VPC, etc.)
- **CI/CD**: Jenkins
- **Infrastructure as Code**: Terraform
- **Containerization**: Docker

## Project Architecture

1. **Jenkins** is used to automate the entire deployment process with two pipelines:
   - **Frontend Pipeline**: Builds, tests, and deploys the React app.
   - **Backend Pipeline**: Builds, tests, and deploys the Node.js API.
2. **Terraform** provisions the required infrastructure on AWS, including the VPC, subnets, security groups, and an EKS cluster to host the MERN application.
3. **AWS EKS** manages the Kubernetes environment for containerized deployment of the frontend and backend services.

## Installation Steps

### Prerequisites

- Install **Jenkins** on your local machine or server.
- Install **Terraform** (v1.0 or later).
- Ensure you have an **AWS account** with the necessary IAM roles and permissions to provision resources like EKS, VPC, and S3.
- Docker should be installed for containerized deployment.

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/mern-deployment.git
cd mern-deployment
```

### 2. Setup Jenkins for Terraform

- Install the necessary plugins for Jenkins:
  - **Docker Pipeline**
  - **Pipeline**
  - **Pipeline AWS**
- Configure Jenkins credentials for AWS:
  - **Access Key ID**
  - **Secret Access Key**
- Use the Jenkins pipeline scripts in the `Jenkinsfiles/Jenkinsfile` directory to create pipeline for Terraform.
- Run the Terraform pipeline to provision the AWS infrastructure. (Such as VPC, EKS, etc.)

### 3. Setup Jenkins for MERN Deployment

- Create separate pipelines for frontend and backend services using the Jenkins pipeline scripts in the `Jenkinsfiles` directory.
- Update the pipeline scripts with your AWS credentials and EKS cluster details.
- Run the pipelines to deploy the MERN application on AWS EKS.
