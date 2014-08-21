<#escape x as jsonUtils.encodeJSONString(x)>
{
	"data":
	{
		"subjects":
		[
			<#list subjects as subject>
			{
				"text": "${subject.text}",
				"value": "${subject.value}"
			}
			<#if subject_has_next>,</#if>
			</#list>
		]
	}
}
</#escape>