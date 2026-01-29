sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"approvalrequests/test/integration/pages/ApprovalRequestsList",
	"approvalrequests/test/integration/pages/ApprovalRequestsObjectPage"
], function (JourneyRunner, ApprovalRequestsList, ApprovalRequestsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('approvalrequests') + '/test/flpSandbox.html#approvalrequests-tile',
        pages: {
			onTheApprovalRequestsList: ApprovalRequestsList,
			onTheApprovalRequestsObjectPage: ApprovalRequestsObjectPage
        },
        async: true
    });

    return runner;
});

