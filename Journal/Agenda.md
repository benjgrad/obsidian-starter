
```dataviewjs
const tasks = dv.pages().where(p => {
	return (moment(p.file.name).isAfter(moment().subtract(1,'day').startOf('day')));
}).file.tasks
dv.taskList(tasks)
```
