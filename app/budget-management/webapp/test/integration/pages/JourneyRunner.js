sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"budgetmanagement/test/integration/pages/ContractBudgetsList",
	"budgetmanagement/test/integration/pages/ContractBudgetsObjectPage"
], function (JourneyRunner, ContractBudgetsList, ContractBudgetsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('budgetmanagement') + '/test/flpSandbox.html#budgetmanagement-tile',
        pages: {
			onTheContractBudgetsList: ContractBudgetsList,
			onTheContractBudgetsObjectPage: ContractBudgetsObjectPage
        },
        async: true
    });

    return runner;
});

