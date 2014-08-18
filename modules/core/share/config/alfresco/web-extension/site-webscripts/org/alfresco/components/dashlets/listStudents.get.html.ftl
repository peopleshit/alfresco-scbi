<script type="text/javascript">
	new Alfresco.widget.DashletResizer("${args.htmlid}", "${instance.object.id}");
</script>

<div class="dashlet">
	<div class="title">${msg('label.title')}</div>
	<div class="body scrollableList">
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
	</div>
</div>