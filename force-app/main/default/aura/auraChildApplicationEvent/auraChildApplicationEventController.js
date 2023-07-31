({
	callChildMethod : function(component, event, helper) {
        var eventNameResponse = component.get('v.eventName');
        var appEvent = $A.get("e.c:auraApplicationEvent");
        appEvent.setParams({
            "eventResponse" : eventNameResponse
        });
        appEvent.fire();
	}
})