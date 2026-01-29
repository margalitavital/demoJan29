# Purchase Contract Management System

A comprehensive solution for managing purchase contracts, suppliers, and budget approvals with automated workflow processes.

## Overview

This project provides a complete Purchase Contract Management System built with:
- **SAP CAP (Cloud Application Programming)** - Backend services and data management
- **SAP Fiori Elements** - Modern UI applications
- **n8n Workflow** - Automated budget approval processes

## Features

### Data Management
- **Suppliers**: Manage supplier information and contacts
- **Contracts**: Track purchase contracts with suppliers and timelines
- **Contract Budgets**: Monitor budget targets, spending, and variances
- **Approval Requests**: Handle budget change approval workflows

### UI Applications
- **Suppliers Management** - List/manage suppliers and their details
- **Contracts Management** - Handle purchase contracts and relationships  
- **Budget Management** - Track budgets, targets, and spending
- **Approval Requests** - Monitor and manage budget approval requests

### Automated Workflows
- **Budget Approval Process** - n8n workflow for finance team approvals
- **Email Notifications** - Automated approval requests and confirmations
- **Status Tracking** - Real-time approval status updates

## Project Structure

File or Folder | Purpose
---------|----------
`app/` | SAP Fiori UI applications
`db/` | Data models and schema definitions
`srv/` | Service layer and business logic
`workflows/` | n8n workflow definitions
`test/data/` | Sample data for development
`package.json` | project metadata and configuration

## Getting Started

### Prerequisites
- Node.js (v18 or later)
- SAP CAP CLI (`npm install -g @sap/cds-dk`)
- n8n instance for workflow automation

### Installation
1. Clone this repository
2. Install dependencies: `npm install`
3. Deploy sample data: `cds deploy --to sqlite`
4. Start the application: `cds watch`

### n8n Workflow Setup
1. Import `workflows/budget-approval-workflow.json` into your n8n instance
2. Configure SMTP settings for email notifications
3. Update webhook URLs in your CAP application configuration

## Usage

### Running the Application
- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Access the Fiori Launchpad at `http://localhost:4004`

### Budget Approval Process
1. Request budget changes through the Budget Management app
2. System triggers n8n workflow for approval
3. Finance team receives email with approve/reject links
4. Automatic status updates and notifications

## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.