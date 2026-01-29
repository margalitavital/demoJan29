namespace purchaseContractManagement;
using { cuid, Currency } from '@sap/cds/common';

@assert.unique: { name: [name] }
entity Suppliers : cuid {
  name: String(100) @mandatory;
  contactEmail: String(100);
  contactPhone: String(20);
  address: String(200);
  contracts: Composition of many Contracts on contracts.supplier = $self;
}

@assert.unique: { contractNumber: [contractNumber] }
entity Contracts : cuid {
  contractNumber: String(50) @mandatory;
  title: String(200);
  startDate: Date;
  endDate: Date;
  supplier: Association to Suppliers;
  budgets: Composition of many ContractBudgets on budgets.contract = $self;
}

@assert.unique: { budgetName: [budgetName] }
entity ContractBudgets : cuid {
  budgetName: String(100) @mandatory;
  targetAmount: Decimal(15,2);
  Currency: Currency;
  spentAmount: Decimal(15,2);
  contract: Association to Contracts;
  approvalRequests: Composition of many ApprovalRequests on approvalRequests.budget = $self;
}

entity ApprovalRequests : cuid {
  requestDate: DateTime;
  currentTargetAmount: Decimal(15,2);
  Currency: Currency;
  proposedTargetAmount: Decimal(15,2);
  reason: String(500);
  status: String(20);
  approvedBy: String(100);
  approvedDate: DateTime;
  budget: Association to ContractBudgets;
}

