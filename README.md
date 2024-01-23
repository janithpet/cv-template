# Clean CV LateX template

## Requirements
### Building
This template builds using `luaLaTeX`.

### Fonts
The template uses the [Alegreya](https://fonts.google.com/specimen/Alegreya) font. Make sure you install it.

If you wish you change the font, you will need to do so in the `cv.cls` file.


## Usage
See `cv.tex` for an example of how to use this template.

In general, it provides 3 environments to your details:

1. Entrylist: This is your general purpose environment which takes 7 arguments. See the example below:
```latex
\begin{entrylist}
	\entry
	{Location}
	{Start date}
	{End date} % Can be empty
	{Title}
	{Subtitle}
	{Provide, a, list, of, skills} % Can be empty
	{Type your description here.}
\end{entrylist}
```

2. FlatItems: This provides a flattened list of items with a title and description:
```latex
\begin{flatlist}
	\flatitem{Title}{Description}
\end{flatlist}
```

3. MultiColumnList: This provides a multi-column list of items, with a configurable number of columns:
```latex
\begin{multicolumnlist}{2}
	\multicolumnitem{Title1}{Description1}
	\multicolumnitem{Title2}{Description2}
\end{multicolumnlist}
```