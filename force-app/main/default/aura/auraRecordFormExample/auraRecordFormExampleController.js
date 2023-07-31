({
	handleSubmit : function(component, event, helper) {
        component.find('notifyLib').showToast({
            "variant" : "success",
            "title" : "Account Record is Created",
            "message" :"Record ID" +event.getParam("id")
        });
		
	}
})