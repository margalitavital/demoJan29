using { purchaseContractManagement } from '../db/schema.cds';

@path: '/odata/v4/ContractManagementService/'
service ContractManagementService {
  @odata.draft.enabled
  entity Suppliers as projection on purchaseContractManagement.Suppliers;
  entity Contracts as projection on purchaseContractManagement.Contracts;
  entity ContractBudgets as projection on purchaseContractManagement.ContractBudgets;
  entity ApprovalRequests as projection on purchaseContractManagement.ApprovalRequests;
}