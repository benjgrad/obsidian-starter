#!/bin/bash

# Read the contents of dailyTasks.md and extract task names
task_names=$(awk -F, '{print $1}' Journal/dailyTasks.md | tr '\n' ',' | sed 's/,$//')

# Generate the JavaScript code and write it to getDailyList.js
cat <<EOL > Scripts/getDailyList.js
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
        return "$task_names"
    }
}
module.exports = getDailyList;
EOL

echo "JavaScript code has been written to getDailyList.js"
