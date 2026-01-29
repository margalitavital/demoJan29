sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"suppliersmanagement/test/integration/pages/SuppliersList",
	"suppliersmanagement/test/integration/pages/SuppliersObjectPage"
], function (JourneyRunner, SuppliersList, SuppliersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('suppliersmanagement') + '/test/flpSandbox.html#suppliersmanagement-tile',
        pages: {
			onTheSuppliersList: SuppliersList,
			onTheSuppliersObjectPage: SuppliersObjectPage
        },
        async: true
    });

    return runner;
});

