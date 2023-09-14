DataView is a powerful [[Obsidian Plugins|plugin]] for [[Obsidian|Obsidian]]. It enables users to query and manipulate their notes using a simple syntax called dataviewjs.

To use DataView, you'll need to have the plugin installed in Obsidian. Once it's enabled, you can start using dataviewjs queries in your markdown files. 

### Embedding  DataView in Markdown files
There are 2 ways of embedding dataview in your markdown:
1. [[Markdown#Code|Code blocks]] ending with 'dataview' or 'dataviewjs'
2. [Inline](https://blacksmithgu.github.io/obsidian-dataview/queries/dql-js-inline/#inline-dataview-js), using a single backtick followed by \$= (Eg. \`\$= //your javascript here\`)

### Limitations
- Dataview blocks do not allow javascript imports (although moment.js is included, it's unclear what else is included)
- Tasks cannot be created -- you can only display tasks queried elsewhere, or create your own 'Tasks' using the markdown syntax