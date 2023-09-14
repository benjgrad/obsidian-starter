#!/bin/bash

# Read the contents of dailyTasks.md and extract task names
task_names=$(awk -F, '{print $1}' Journal/dailyTasks.md | tr '\n' ',' | sed 's/,$//')

# Generate the JavaScript code and write it to getDailyList.js
cat <<EOL > Scripts/getDailyTasks.js
function getDailyTasks() {
    const getDailyList = require(app.vault.adapter.basePath + "/Scripts/getDailyList.js");
    var tasks = [];
    try {
        tasks = getDailyList(false).split(',');
    } catch (err) {
        tasks = "$task_names".split(',');
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
EOL

echo "JavaScript code has been written to getDailyList.js"
