<script type="text/javascript">
	new Alfresco.widget.DashletResizer("${args.htmlid}", "${instance.object.id}");
</script>

<script type="text/javascript">
	YAHOO.util.Event.onAvailable("basic", function() {
	    YAHOO.example.Basic = function() {
	        var myColumnDefs = [
	            {key:"name", label:"Name", sortable:true, resizeable:true},
	            {key:"group", label:"Group", sortable:true, resizeable:true}
	        ];
		
	        var myDataSource = new YAHOO.util.DataSource(YAHOO.lang.substitute(
			"{proxy}hse/listStudents.json",
			{
				proxy: Alfresco.constants.PROXY_URI
			}));
	        myDataSource.responseType = YAHOO.util.DataSource.TYPE_JSON;
	        myDataSource.responseSchema = {
		    	resultsList: 'data.students',
	            fields: ["name", "group"]
	        }
			myDataSource.maxCacheEntries = 0;

	        var myDataTable = new YAHOO.widget.DataTable("basic",
	                myColumnDefs, myDataSource, {caption:"Students"});
	                
	        return {
	            oDS: myDataSource,
	            oDT: myDataTable
	        };
	    }();
	});
</script>

<script type="text/javascript">
	YAHOO.util.Event.onAvailable("menubutton-hse-container", function() {
	    Alfresco.util.Ajax.jsonGet(
		{
			url: Alfresco.constants.PROXY_URI +
			"hse/listSubjects.json",
			successCallback: {
				fn: function (response)
				{
					var oMenuButtonHSE = new YAHOO.widget.Button({ 
						id: "menubutton-hse-menu-button", 
						name: "menubutton-hse",
						label: "<em class=\"yui-button-label\">Option</em>",
						type: "menu",  
						menu: response.json.data.subjects, 
						container: "menubutton-hse-container"
					});
					var onSelectedMenuItemChange = function (event) {

						var oMenuItem = event.newValue;

						this.set("label", ("<em class=\"yui-button-label\">" + 
									oMenuItem.cfg.getProperty("text") + "</em>"));

					};
					oMenuButtonHSE.on("selectedMenuItemChange", onSelectedMenuItemChange);
				},
				scope: this
			}
		});
	});
</script>

<div class="dashlet">
	<div class="title">${msg('label.title')}</div>
	<div class="body scrollableList">
		<div id="menubutton-hse-container"></div>
		<center>
			<div id="basic"></div>
		</center>
	</div>
</div>