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
	<img width="741" alt="image" src="https://github.com/janithpet/cv-template/assets/22471198/c39ee14b-b9cd-4971-964e-ddb1c45da5ba">


3. FlatItems: This provides a flattened list of items with a title and description:
	```latex
	\begin{flatlist}
		\flatitem{Title}{Description}
	\end{flatlist}
	```
	This gets rendered like:
	<img width="732" alt="image" src="https://github.com/janithpet/cv-template/assets/22471198/406c1997-d365-4d7a-ac02-b94f0bfa96e0">


5. MultiColumnList: This provides a multi-column list of items, with a configurable number of columns:
	```latex
	\begin{multicolumnlist}{2}
		\multicolumnitem{Title1}{Description1}
		\multicolumnitem{Title2}{Description2}
	\end{multicolumnlist}
	```
	This gets rendered like:
	<img width="736" alt="image" src="https://github.com/janithpet/cv-template/assets/22471198/ab174536-1dde-4ce4-9c64-c3ee49b4bece">


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
	<img width="734" alt="image" src="https://github.com/janithpet/cv-template/assets/22471198/4ddefc63-6d38-4d9d-86cd-c92ec9bfaa49">

- A `\highlight` command that provides a unified way of highlighting key words. You can modify the behaviour of `\highlight` in the [`cv.cls` file](https://github.com/janithpet/cv-template/blob/bbb77f02dd24e43f5491f35aa2143d3a612ba0b8/cv.cls#L93). For example:
	```latex
	 I did some \highlight{programming}.
	```
	This gets rendered like:
	<img width="153" alt="image" src="https://github.com/janithpet/cv-template/assets/22471198/eb7cbcc4-c948-4feb-bdf9-f5838757067b">


- A `\link` command that provides a stylised way of adding an external link. It has the same signature as `\href`. For example:
	```latex
	\link{https://your.link}{my programming skill}
	```
	This gets rendered like:
	<img width="155" alt="image" src="https://github.com/janithpet/cv-template/assets/22471198/cbbfa154-d4e9-48ee-bd08-dca96bda48e9">

## Example
You can clone this repository and build `cv.tex` using `LuaLateK` to see an example. This should look like:
<img width="555" alt="image" src="https://github.com/janithpet/cv-template/assets/22471198/06239318-9bc3-48a2-97da-ae2dc40e2548">



## TODO
- Currently, the accent color needs to be set inside of `cv.cls`. This should be made configurable from the [`cv.tex`](https://github.com/janithpet/cv-template/blob/bbb77f02dd24e43f5491f35aa2143d3a612ba0b8/cv.cls#L19) file.
