<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
var count = 0;
(function($) {
	$.subscribe("/confirmDelete",function(event,data) {
		if(count == 0){
	        if ( confirm('<s:text name="Are you sure deleting?" />') ) {
	        	count = count + 1;
	            return true;
	         }
	         else {
	             return exit;
	         }
		}
    },null);
})(jQuery);
</script>