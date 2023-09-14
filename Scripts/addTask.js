// An Obsidian function to add a task to the current note
function addTask(task) {
    return "- [ ] " + task + "\n";
}

module.exports = addTask;