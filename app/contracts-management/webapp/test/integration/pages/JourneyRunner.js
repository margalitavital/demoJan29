sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"contractsmanagement/test/integration/pages/ContractsList",
	"contractsmanagement/test/integration/pages/ContractsObjectPage"
], function (JourneyRunner, ContractsList, ContractsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('contractsmanagement') + '/test/flpSandbox.html#contractsmanagement-tile',
        pages: {
			onTheContractsList: ContractsList,
			onTheContractsObjectPage: ContractsObjectPage
        },
        async: true
    });

    return runner;
});

