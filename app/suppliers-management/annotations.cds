using ContractManagementService as service from '../../srv/contract-service';
annotate service.Suppliers with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contactEmail',
                Value : contactEmail,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contactPhone',
                Value : contactPhone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address',
                Value : address,
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
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contactEmail',
            Value : contactEmail,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contactPhone',
            Value : contactPhone,
        },
        {
            $Type : 'UI.DataField',
            Label : 'address',
            Value : address,
        },
    ],
);

