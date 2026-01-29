using ContractManagementService as service from '../../srv/contract-service';
annotate service.ApprovalRequests with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'requestDate',
                Value : requestDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'currentTargetAmount',
                Value : currentTargetAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Currency_code',
                Value : Currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'proposedTargetAmount',
                Value : proposedTargetAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'reason',
                Value : reason,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'approvedBy',
                Value : approvedBy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'approvedDate',
                Value : approvedDate,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'requestDate',
            Value : requestDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'currentTargetAmount',
            Value : currentTargetAmount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Currency_code',
            Value : Currency_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'proposedTargetAmount',
            Value : proposedTargetAmount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'reason',
            Value : reason,
        },
    ],
);

annotate service.ApprovalRequests with {
    budget @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'ContractBudgets',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : budget_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'budgetName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'targetAmount',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Currency_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'spentAmount',
            },
        ],
    }
};

