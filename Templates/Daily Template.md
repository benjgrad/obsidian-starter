[[Journal/Yearly/<%moment(tp.file.title).format("YYYY")%>|<%moment(tp.file.title).format("YYYY")%>]] | [[Journal/Weekly/<%moment(tp.file.title).format("YYYY-MM")%>|<%moment(tp.file.title).format("MM")%>]] |[[Journal/Weekly/<%moment(tp.file.title).format("gggg-[W]ww")%>|<%moment(tp.file.title).format("[W]ww")%>]]
[[Journal/Daily/<%tp.date.now("YYYY-MM-DD", -1, tp.file.title, "YYYY-MM-DD")%>|<- Yesterday]] | [[Journal/Daily/<%tp.date.now("YYYY-MM-DD", 1, tp.file.title, "YYYY-MM-DD")%>|Tomorrow ->]]

## Tasks
<%tp.user.getDailyTasks()%>
- [ ] #TODO
## Notes
- 
```dataviewjs
const dailyTasks = '<%tp.user.getDailyList()%>'.split(',')
const taskDict = {}; 
for (let item of dailyTasks) {
	taskDict[item] = true;
}
const regex = /\[\[Journal\/Daily\/(.*?)\]\]/g;
const yesterdayPage = dv.page("<%tp.date.now("YYYY-MM-DD", -1, tp.file.title, "YYYY-MM-DD")%>", false);
if (yesterdayPage) {
	const yesterday = dv.page("<%tp.date.now("YYYY-MM-DD", -1, tp.file.title, "YYYY-MM-DD")%>", false).file.tasks.where(t => {

	return !t.completed && !taskDict[t.text.toString()] && !t.text.toString().match(regex)
})
if (yesterday.length != 0){
	dv.header(3, 'Unfinished yesterday:')
	dv.taskList(yesterday);
}
}


const outstanding = dv.pages(undefined, false).file.tasks.where(t => {
	return !t.completed && t.text.includes("<%tp.file.title%>")
})
if (outstanding.length != 0){
	dv.header(3, 'Scheduled for today:')
	dv.taskList(outstanding);
} 

```
