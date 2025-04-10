# todo
A `fish` function that prints one's todo list to display the contents for only the current day.

## Installation and Usage

1. Ensure you are using `fish` as your shell.
If you use `homebrew` as your package manager (which I recommend), it can be installed by running
```bash
brew install fish
```
2. Download `todo.fish` from this repository, and save it to `~/.config/fish/functions/`.
3. Create your `todo.md` file in the following form:

```markdown
# TODO #

Wednesday, April 9 <!--- date MUST be structured in this form ---!>

1. Item one
    - Subitem
2. Item two

Thursday, April 10

1. Item one
2. Item two
    - bla bla bla
    - bla bla bla ... actual contents can be in whatever form you wish,
just ensure that the dates match this structure
```
**Take note of where you save this file!**

4. Edit `todo.fish` (line 12) to change the directory to wherever you saved
`todo.md`.
5. Run `funcsave todo`

Now, whenever you call `todo` in your terminal, no matter what directory 
you are in, the function will find the current date and display the 
todo-list in `todo.md` for that date only. 
For example, at the time of writing, it is currently Thursday, April 10.
When I call `todo` in my terminal, it will display 
```fish
Thursday, April 10

1. Item one
2. Item two
```

This function is convenient if you have especially large TODO lists, as
it cuts out distraction for things you don't need to be worrying about (yet).

Open to suggestions as to how to improve this or add new features. 
I made it primarily for me but I could see it being useful for others, too. 
