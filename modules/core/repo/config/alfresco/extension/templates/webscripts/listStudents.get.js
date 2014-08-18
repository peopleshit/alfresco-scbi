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