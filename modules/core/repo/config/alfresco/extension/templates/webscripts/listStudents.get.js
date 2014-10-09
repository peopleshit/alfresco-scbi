var st = siteService.getSite('secondcourse');
var dlc = st.getContainer('dataLists');

var xpath = './*[@dl:dataListItemType="hse:studentList"]';
var dl = dlc.childrenByXPath(xpath)[0];

model.students = [];

for each(var dli in dl.children)
	model.students.push({
      "name": dli.properties['hse:studentName'],
	  "group": dli.properties['hse:studentGroup'],
	});

model.students.sort(function(a, b){
	if (a.group > b.group)
		return 1;
	else if (a.group < b.group)
		return -1;
	else
		if (a.name > b.name)
			return 1;
		else if (a.name < b.name)
			return -1;
		else
			return 0;
});