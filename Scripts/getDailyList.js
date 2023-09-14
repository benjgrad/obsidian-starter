// retrieves the list of daily tasks from dailyTasks.txt
// reads the file without any require or import statements
function getDailyList(includeIcons = false) {
    try {

        var fs = require('fs');
        var output = "";
        // log current directory path
        var data = fs.readFileSync(app.vault.adapter.basePath + '/Journal/dailyTasks.md', 'utf8');

        var lines = data.split('\n');
        var i = 0;
        for (var line of lines) {
            const words = line.split(',');
            if (includeIcons) {
                if (words.length == 3) {
                    output += words[1] + ' ' + words[0] + ' ' + words[2];
                } else {
                    output += words[0];
                }
            } else {
                output += words[0];
            }
            if (i != lines.length - 1) {
                output += ',';
            }
            i++;
        }
        return output;
    } catch (err) {
        return "Breakfast,Lunch,Dinner,Exercise,Dopamine Fasting,Sleep"
    }
}
module.exports = getDailyList;