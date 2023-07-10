# Create your own NPM & GitHub packages for React

## Why?

Why you should ask? What's the use? Well, we could provide several answers to this questions but the most important one is: **reusability**,
especially when you're working on a big project with a lot of developers. The idea is to convert your components into packages that you can
use in any other project. The other advantage is that you can share your work with the community and get feedbacks, thus improving your
skills, allowing you to learn from others and to help others learn from you and be part of the community.

## How?

### I. Create your package

First of all, you need to create your package. You can do it manually or using the `create-react-app` command. Using the `create-react-app`
command is the easiest way to do it. You can find more information about it [here](https://create-react-app.dev/docs/getting-started/). That
should setup your package with all the necessary dependencies as well as the `package.json` file. This is what your folder structure should
look like:

```
your_package_name
├── node_modules
├── public
├── src
│   ├── App.css
│   ├── App.js
│   ├── App.test.js
│   ├── index.css
│   ├── index.js
│   ├── logo.svg
│   ├── reportWebVitals.js
│   └── setupTests.js
├── .gitignore
├── package-lock.json
├── package.json
└── README.md
```

You can now create a new folder called `components` and move all your components in it. This is what your folder structure should look like:

```
your_package_name
├── node_modules
├── public
├── src
│   ├── components
│   │   ├── index.js
│   │   └── index.css
│   ├── App.css
│   ├── App.js
│   ├── App.test.js
│   ├── index.css
│   ├── index.js
│   ├── logo.svg
│   ├── reportWebVitals.js
│   └── setupTests.js
├── .gitignore
├── package-lock.json
├── package.json
└── README.md
```

You can add all the logic of your components in the `index.js` file. We are gonna create a simple component to illustrate this tutorial
(we'll stay classic with a `Hello World!` component). This is what your `index.js` file should look like:

```javascript
import React from 'react';
import './index.css';

const YourComponent = () => {
	return (
		<div>
			<h1>Hello World!</h1>
		</div>
	);
};

export default YourComponent;
```

You can now create a `index.css` file to style your component. This is what your `index.css` file should look like:

```css
h1 {
	color: red;
}
```

You can now import your component in the `App.js` file and use it. This is what your `App.js` file should look like:

```javascript
import YourComponent from './YourComponent';

function App() {
	return (
		<div className='App'>
			<YourComponent />
		</div>
	);
}

export default App;
```

You can now run your package using the `npm start` command. You should see your component displayed in your browser. If everything is
working fine, you should see the 'Hello World!' in red characters. You can now delete the `App.css`, `App.test.js`, `logo.svg`,
`reportWebVitals.js` and `setupTests.js` files. You can also delete the `reportWebVitals` import in the `index.js` file and the call made at
the bottom (`reportWebVitals()`). You can now add your own components in the `components` folder and import them in the `index.js` file. You
can also add your own styles in the `index.css` file.

### II. Create your GitHub repository

Now that you have your package, you need to create a GitHub repository. You can do it manually or using the GitHub CLI. You can find more
details about it [here](https://cli.github.com/manual/). Once you have your repository, you need to link it to your package. To do so, you
need to go to your package folder and run the following commands:

```
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin your_github_username/your_repository_name
git push -u origin main
```

### III. Publish your package

Now that you have your package and your GitHub repository, you need to publish your package. To do so, you need to run the following
command:

```
npm publish
```

### IV. Install your package

Now that you have your package published, you can install it in any other project. To do so, you need to run the following command:

```
npm install your_package_name
```

### V. Import your package

Now that you have your package installed, you can import it in any other project. To do so, you need to run the following command:

```
import YourComponent from 'your_package_name';
```

## Conclusion

That's it! You now know how to create your own NPM & GitHub packages for React. You can now share your work with the community and get
feedbacks, thus improving your skills, allowing you to learn from others and to help others learn from you and be part of the community.

## Resources

-   [create-react-app](https://create-react-app.dev/docs/getting-started/)
-   [GitHub CLI](https://cli.github.com/manual/)
-   [NPM](https://docs.npmjs.com/)
-   [React](https://reactjs.org/docs/getting-started.html)
