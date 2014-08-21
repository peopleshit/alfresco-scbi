model.subjects = [];

for each(var subj in person.sourceAssocs['hse:subjectTeacher'])
	model.subjects.push({
		"text": subj.properties['hse:subjectName'],
		"value": subj.properties['hse:subjectName']
	});
