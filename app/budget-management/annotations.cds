using ContractManagementService as service from '../../srv/contract-service';
annotate service.ContractBudgets with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'budgetName',
                Value : budgetName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'targetAmount',
                Value : targetAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Currency_code',
                Value : Currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'spentAmount',
                Value : spentAmount,
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
            Label : 'budgetName',
            Value : budgetName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'targetAmount',
            Value : targetAmount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Currency_code',
            Value : Currency_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'spentAmount',
            Value : spentAmount,
        },
    ],
);

annotate service.ContractBudgets with {
    contract @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Contracts',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : contract_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'contractNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'title',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'startDate',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'endDate',
            },
        ],
    }
};

