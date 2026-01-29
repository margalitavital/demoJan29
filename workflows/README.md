# Budget Approval Workflow

## Overview
This n8n workflow automates the budget approval process for purchase contract management. When a user requests to change a budget target amount, the workflow triggers an approval process involving the finance team.

## Workflow Components

### Main Workflow: `budget-approval-workflow.json`

**Trigger Endpoints:**
- **POST** `/budget-approval` - Initiates the approval process
- **GET** `/budget-approval/approve/{requestId}` - Approves a budget request
- **GET** `/budget-approval/reject/{requestId}` - Rejects a budget request

### Workflow Steps

1. **Budget Approval Request** (Webhook Trigger)
   - Receives POST request with budget change details
   - Expected payload format:
   ```json
   {
     "requestId": "unique-request-id",
     "budgetName": "Budget Name",
     "contractTitle": "Contract Title",
     "currentTargetAmount": 100000.00,
     "proposedTargetAmount": 120000.00,
     "currency": "USD",
     "reason": "Reason for increase",
     "requestedBy": "user@company.com",
     "requestDate": "2024-01-29T10:00:00Z",
     "callbackUrl": "https://your-cap-app.com/api/approval-callback",
     "approveUrl": "https://your-n8n-instance.com/webhook/budget-approval/approve/request-id",
     "rejectUrl": "https://your-n8n-instance.com/webhook/budget-approval/reject/request-id"
   }
   ```

2. **Send Approval Email**
   - Sends email notification to finance team
   - Includes all budget details and approval/rejection links

3. **Update Request Status**
   - Calls back to CAP application to update request status to "EmailSent"

4. **Respond Success**
   - Returns success response to the initial webhook call

### Approval/Rejection Flows

**Approval Flow:**
- Finance team clicks approve link
- Updates request status to "Approved" via callback
- Sends confirmation email to requester
- Returns success message

**Rejection Flow:**
- Finance team clicks reject link  
- Updates request status to "Rejected" via callback
- Sends rejection notification to requester
- Returns rejection message

## Integration with CAP Application

The workflow integrates with your CAP application through:

1. **Webhook Calls**: CAP app calls the workflow when budget approval is needed
2. **Callback URLs**: Workflow calls back to CAP app to update request status
3. **Email Notifications**: Automated emails keep all stakeholders informed

## Setup Requirements

1. **n8n Instance**: Deploy this workflow to your n8n instance
2. **Email Configuration**: Configure SMTP settings in n8n for email sending
3. **Webhook URLs**: Update your CAP application with the correct webhook URLs
4. **Environment Variables**: Set up proper email addresses for finance team

## Usage in CAP Application

To trigger the approval workflow from your CAP application, make a POST request to:
```
https://your-n8n-instance.com/webhook/budget-approval
```

With the payload structure shown above. The workflow will handle the entire approval process and call back to your application with status updates.