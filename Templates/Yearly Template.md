
```dataviewjs
function sortByDate(a,b) {
	const dateA = moment(a)
	const dateB = moment(b)
	return dateA.isBefore(dateB);
}

function isComplete(task, name) {
	return task.text.includes(name) && task.completed;
}

function booleanHeatMap(name, pages, container) {
	const data = {
		entries: [],
		intensityScaleStart: 1,
	    intensityScaleEnd: 0,
	}
	for (let page of pages) {
		const done = page.file.tasks.some(t => isComplete(t, name));
		data.entries.push({
			date: page.file.name,
			intensity: done ? 1 : 0
		});
	}
	renderHeatmapCalendar(container, data)
}

const pages = dv.pages('"Journal/Daily"').where(p => {
	return moment(p.name).format("YYYY") == <%tp.file.title%>
}).sort(sortByDate)

const titles = "<%tp.user.getDailyList(true)%>".split(',');
const names = "<%tp.user.getDailyList(false)%>".split(',');
for (let i = 0; i < titles.length; i++) {
	dv.header(3,"** "+titles[i]+" **")
	booleanHeatMap(names[i], pages, this.container)
}

```
