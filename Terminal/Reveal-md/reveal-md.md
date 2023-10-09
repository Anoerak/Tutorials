# Reveal-md

In this tutorial, we will learn how to use [reveal-md](https://www.npmjs.com/package/reveal-md) to create a presentation using markdown.

## Installation

First, we need to install reveal-md globally:

```bash
npm install -g reveal-md
```

## Create a presentation

Next, we need to create a markdown file. Let's call it `slide.md`. In this file, we will add the content of our presentation.

```bash
touch slide.md
```

A template is available [here](https://github.com/Anoerak/Tutorials/blob/main/Terminal/Reveal-md/slide.md).

## Start the presentation

To start the presentation, we need to run the following command:

```bash
reveal-md slide.md
```

This will open a new browser window with our presentation. We can also specify a theme for our presentation:

```bash
reveal-md slide.md --theme night
```

## Add a title slide

To add a title slide, we need to add the following to our markdown file:

```markdown
# My Presentation

---

## My first slide

This is my first slide
```

## Add a code slide

To add a code slide, we need to add the following to our markdown file:

````markdown
## My second slide

```javascript
const myFunction = () => {
	console.log('Hello World');
};
```
````

## Add a code slide with highlighting

To add a code slide with highlighting, we need to add the following to our markdown file:

````markdown
## My third slide

```javascript [3]
// We use a long function to showcase the highlighting feature
const myFunction = () => {
	console.log('Hello World');
};

myFunction();
```
````

## Add a list slide

To add a list slide, we need to add the following to our markdown file:

```markdown
## My forth slide

-   Item 1
-   Item 2
-   Item 3
```

## Add a link slide

To add a link slide, we need to add the following to our markdown file:

```markdown
## My fifth slide

[Google](https://www.google.com)
```

## Add a image slide

To add a image slide, we need to add the following to our markdown file:

```markdown
## My sixth slide

![My Image](https://picsum.photos/200/300)
```

## Add a video slide

To add a video slide, we need to add the following to our markdown file:

```markdown
## My seventh slide

<iframe width="560" height="315" src="https://www.youtube.com/embed/2G_mWfG0DZE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```

## Add a slide with notes

To add a slide with notes, we need to add the following to our markdown file:

```markdown
## My eight slide

Note:

This is a note
```

## Add a slide with a table

To add a slide with a table, we need to add the following to our markdown file:

```markdown
## My ninth slide

| Name | Age |
| ---- | --- |
| John | 30  |
| Jane | 25  |
```
