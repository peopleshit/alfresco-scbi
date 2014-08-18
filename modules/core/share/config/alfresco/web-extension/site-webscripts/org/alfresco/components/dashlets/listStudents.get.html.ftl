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

<div class="dashlet">
	<div class="title">${msg('label.title')}</div>
	<div class="body scrollableList">
	<!--
		<#list data.students as student>
			<div class="detail-list-student <#if !student_has_next>last-student</#if>">
				<table>
					<tr>
						<td><div class="theme-color-1">${student.name}</div></td>
						<td><div class="theme-color-1">${student.group}</div></td>
					</tr>
				</table>
			</div>
		</#list>
		</br>
		</br>
		-->
		<center>
		<div id="basic">	
		</div>
		</center>
	</div>
</div>