<?xml version="1.0" encoding="utf8"?>
<#escape x as x?xml>
	<studentList>
		<data>
			<items>
				<list data.items as item>
					<item>
						<name>${item.name}</name>
						<group>${item.group}</group>
					</item>
				</list>
			</items>
		</data>
	</studentList>
</#escape>