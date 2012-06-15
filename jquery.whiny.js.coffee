original = jQuery.fn.init

jQuery.fn.init = (selector, context, rootjQuery) ->
	obj = new original(selector, context, rootjQuery)
	warning = "jQuery: Selector '#{selector}' has no matches."

	console.warn warning if obj.selector && obj.length==0 && console && console.warn

	obj
