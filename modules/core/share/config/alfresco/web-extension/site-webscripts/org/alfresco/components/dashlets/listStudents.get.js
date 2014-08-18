var connector = remote.connect('alfresco');
var dataStr = connector.get('/hse/listStudents');
var data = eval('('+dataStr+')').data;
model.data = data;