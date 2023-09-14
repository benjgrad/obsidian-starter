This is a [[Obsidian Plugins|plugin]] that uses javascript to produce values that are generated at template generation time. It can use javascript that is specified by the user, although it's runtime location is not in the location specified by the user. The values will not be generated until the template has been used to create a new file. Once the file is created, the values generated will be static, and can be edited like normal markdown.
## Configuration
Each output folder needs a template file to be specified in the settings. 
## Examples
<%tp.file.title%>
<%moment().format('YYYY-MM-DD')%>
<%tp.user.getDailyTasks()%>

## Limitations
- Javascript will not be run in the location specified, meaning filesystem commands are basically useless