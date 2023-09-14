function getDailyTasks() {
    const getDailyList = require(app.vault.adapter.basePath + "/Scripts/getDailyList.js");
    var tasks = [];
    try {
        tasks = getDailyList(false).split(',');
    } catch (err) {
        tasks = "Breakfast,Lunch,Dinner,Exercise,Dopamine Fasting,Sleep".split(',');
    }
    var output = "";
    for (var i = 0; i < tasks.length; i++) {
        output += '- [ ] ' + tasks[i];
        if (i != tasks.length - 1) {
            output += '\n';
        }
    }
    return output;
}

module.exports = getDailyTasks;