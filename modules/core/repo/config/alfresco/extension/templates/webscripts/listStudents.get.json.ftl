<#escape x as jsonUtils.encodeJSONString(x)>
{
	"data":
	{
		"students":
		[
			<#list students as student>
			{
				"name": "${student.name}",
				"group": "${student.group}"
			}<#if student_has_next>,</#if>
			</#list>
		]
	}
}
</#escape>