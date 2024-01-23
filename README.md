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
	This gets rendered like:

2. FlatItems: This provides a flattened list of items with a title and description:
	```latex
	\begin{flatlist}
		\flatitem{Title}{Description}
	\end{flatlist}
	```
	This gets rendered like:

3. MultiColumnList: This provides a multi-column list of items, with a configurable number of columns:
	```latex
	\begin{multicolumnlist}{2}
		\multicolumnitem{Title1}{Description1}
		\multicolumnitem{Title2}{Description2}
	\end{multicolumnlist}
	```
	This gets rendered like:

In addition to these, it provides a few other `commands`:
-  An `items` list environment that can be used inside the `Description` argument of an `\entry` environment. For example
	For example:
	```latex
	\begin{items}
		\item This is an \emph{items} item.
		\item This is another \emph{items} item.
	\end{items}
	```
	This gets rendered like:
- A `\highlight` command that provides a unified way of highlighting key words. You can modify the behaviour of `\highlight` in the `cv.cls` file. For example:
	```latex
	 I did some \highlight{programming}.
	```
	This gets rendered like:

- A `\link` command that provides a stylised way of adding an external link. It has the same signature as `\href`. For example:
	```latex
	\link{your link}{your text}
	```
	This gets rendered like:
