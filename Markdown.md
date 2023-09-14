## Introduction to Markdown
Markdown is designed to be both human-readable and easy to convert into HTML or other rich text formats. It allows you to focus on the content itself rather than worrying about complex formatting. Markdown documents typically have a `.md` or `.markdown` file extension. For more information, check out [Obsidian's documentation](https://help.obsidian.md/Editing+and+formatting/Editing+and+previewing+Markdown)

## Basic Markdown Syntax
### Headers
You can create headers using the `#` symbol followed by a space. The number of `#` symbols indicates the header level. For example:

```
# Header 1 
## Header 2 
### Header 3
etc.
```

### Emphasis
You can emphasize text using asterisks `*` or underscores `_`. For italic text, use one symbol, and for bold text, use two symbols:

```
*italic* or _italic_ 
**bold** or __bold__
```
### Lists
Create ordered and unordered lists:
#### Ordered List:

```
1. First item 
2. Second item 
3. Third item
```

#### Unordered List:

```
- Item 1 
- Item 2  
- Subitem 2.1 
- Item 3
```
`

### Links
Create links using `[text](URL)` syntax:

```
[Google](https://www.google.com)`
```

### Images
Insert images using `![alt text](image URL)`:

```
![Logo](https://example.com/logo.png)
```

### Code

Inline code can be wrapped in backticks \`like this\`. For code blocks, use triple backticks: (Click on the code block below to see the backticks)

```python
python def hello_world(): print("Hello, World!")
```

## Advanced Markdown

### Tables
Create tables using pipes `|` and hyphens `-`:

```
| Header 1 | Header 2 |
|----------|----------|
| Cell 1   | Cell 2   |
| Cell 3   | Cell 4   |
```
`
### Blockquotes
Use the `>` symbol to create blockquotes:
`> This is a blockquote.`

### Horizontal Rules
Create horizontal rules with three or more hyphens, asterisks, or underscores:

`---`

### HTML
You can also use HTML within Markdown for advanced formatting when needed.

## Obsidian Flavoured Markdown
Obsidian Adds some of its own functionality to the markdown language. Below are some examples

### Callouts
```
> [!note]
```
Result:
> [!note]
> This is a callout

### Block References
```
[Link name](Markdown#Introduction to Markdown)
```
Result:
[Link name](Markdown#Introduction to Markdown)

### Checkboxes
```
- [ ] Incomplete Item
- [x] Complete Item
```
Result:
- [ ] Incomplete Item
- [x] Complete Item