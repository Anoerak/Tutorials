# Create your own NPM & GitHub packages for React

## Why?

Why you should ask? What's the use? Well, we could provide several answers to this questions but the most important one is: **reusability**,
especially when you're working on a big project with a lot of developers. The idea is to convert your components into packages that you can
use in any other project. The other advantage is that you can share your work with the community and get feedbacks, thus improving your
skills, allowing you to learn from others and to help others learn from you and be part of the community.

## How?

### I. Create your GitHub repository

First off, you need to create a GitHub repository. You can do it manually or using the GitHub CLI. You can find more details about it
[here](https://cli.github.com/manual/). Once you have your repository, you need to link it to your package. To do so, you need to go to your
package folder and run the following commands:

```bash
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin your_github_username/your_repository_name
git push -u origin main
```

### II. Create your package

Now that you have your GitHub repo created, you need to create your package. You can do it manually or using the `create-react-app` command.
Using the `create-react-app` command is the easiest way to do it. You can find more information about it
[here](https://create-react-app.dev/docs/getting-started/). That should setup your package with all the necessary dependencies as well as
the `package.json` file. This is what your folder structure should look like:

```bash
npx create-react-app your_package_name
```

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
the bottom (`reportWebVitals()`). This is what your folder structure should look like:

```
your_package_name
├── node_modules
├── public
├── src
│   ├── components
│   │   ├── index.js
│   │   └── index.css
│   ├── App.js
│   ├── index.css
│   ├── index.js
├── .gitignore
├── package-lock.json
├── package.json
└── README.md
```

You can now add your own components in the `components` folder and import them in the `index.js` file. You can also add your own styles in
the `index.css` file.

### II. Modify your package.json file

Now that you have your package, you need to modify your `package.json` file. You need to install some dependencies and modify some fields.

#### 1. Install dependencies

Run the following commands to install the dependencies:

```bash
npm install --save-dev @babel/cli @babel/core @babel/preset-env @babel/preset-react
```

You should now find the following dependencies in your `package.json` file (^_.\*\*._ stands for the version number):

```json
	"devDependencies": {
		"@babel/cli": "^7.22.6",
		"@babel/core": "^7.22.8",
		"@babel/preset-env": "^7.22.7",
		"@babel/preset-react": "^7.22.5"
	}
```

`babel-cli` is a command line interface for Babel. It allows you to use Babel from the terminal and will also transpile your code to ES5
(required by web browsers ). `babel-preset-env` is a smart preset that allows you to use the latest JavaScript without needing to
micromanage which syntax transforms (and optionally, browser polyfills) are needed by your target environment(s). It is required by
`babel-cli` to transpile your code from ES6 to ES5. `babel-preset-react` is a Babel preset for all React plugins required by `babel-cli` to
understand how to convert React code to ES5.

#### 2. Modify the package.json file

First off, you need to modify your `build script` in the `scripts` field. You need to add the following line (!! REPLACE
<Your_Component_Folder> WITH THE NAME OF YOUR COMPONENT FOLDER !!):

```json
"build": "SET NODE_ENV=production && rm -rf dist && mkdir dist && npx babel src/<Your_Component_Folder> --out-dir dist --copy-files"
```

Find the `private` field (should be the fourth line) and set it to `false` in order to be able to publish your package later on. Then, you
need to add the following lines under the `private` field:

```json
"main": "dist/index.js",
"module": "dist/index.js",
"babel": {
	"presets": ["@babel/preset-env", "@babel/preset-react"]
},

```

Finally, let us install all the dependencies we need to run our package. Run the following command:

```bash
npm i
```

### III. Create your NPM account

Now that you have your package and your GitHub repository, you need to create your NPM account. You can do it manually or using the NPM CLI.

You can find more details about it [here](https://docs.npmjs.com/creating-a-new-npm-user-account). Once you have your account, you need to
link it to your package. To do so, you need to go to your package folder and run the following commands:

```bash
npm login
```

You will be prompted to enter your NPM username, password and email. Once you have entered them, you need to run the following command:

```bash
npm whoami
```

You should see your NPM username displayed in your terminal.
![NPM username](./react_npm_modal/img/Capture%20d'écran%202023-07-10%20162623.png)

You can now publish your package.

### IV. Publish your package on NPM

Now that you have your package and your GitHub repository, you need to build then publish your package. To do so, you need to run the
following command:

```bash
npm run build
```

A confirmation message should be displayed in your terminal.
![Confirmation message](./react_npm_modal/img/Capture%20d'écran%202023-07-10%20162332.png)

You should see a `dist` folder created in your package folder. Your folder structure should now look like this:

```
your_package_name
├── dist
│   ├── index.css
│   ├── index.js
│   └── index.js.map
├── node_modules
├── public
├── src
│   ├── components
│   │   ├── index.js
│   │   └── index.css
│   ├── App.js
│   ├── index.css
│   ├── index.js
├── .gitignore
├── package-lock.json
├── package.json
└── README.md
```

Although the `index.js.map` file is not required and therefore might not be created.

**!!!!! CHECK THE VERSION NUMBER IN YOUR PACKAGE.JSON FILE !!!!! YOU CANT PUBLISH A PACKAGE WITH A VERSION NUMBER THAT ALREADY EXISTS OR
LOWER THAN THE PREVIOUS ONE !!!!!**

You can now publish your package. To do so, you need to run the following command:

```bash
npm publish
```

You'll be prompt to authorize the browser to open an authentication page. Once you have authorized it, you should see a success message in
your terminal. You can now check your package on NPM. To do so, you need to run the following command:

```bash
npm view your_package_name
```

You should see your package details displayed in your terminal.
![npm view](/React_Create_Your_NPM_Package/react_npm_modal/img/Capture%20d'écran%202023-07-10%20154200.png)

### V. Publish your package on GitHub

Now that you have your package published on NPM, you can publish it on GitHub.

First, we need to allow NPM to authenticate with GitHub. To do so, We'll create a personal access token. You can find more details about it
[here](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token).
you want to authorize your token to have control over the following scopes:

```
	-   repo
	-   write:packages
	-   read:packages
```

Once you have created your token, you need to run the following command:

```bash
npm config set //npm.pkg.github.com/:_authToken <YOUR_TOKEN>
```

You need now to make some minor changes to your `package.json` file. You need to add the following lines under the `private` field:

```json
"repository": {
		"type": "git",
		"url": "https://github.com/<YOUR_GITHUB_USERNAME>/<YOUR_REPO_NAME>.git"
	},
	"publishConfig": {
		"registry": "https://npm.pkg.github.com/",
		"access": "public"
	},
```

You also need to change the `name` field to `@<YOUR_GITHUB_USERNAME>/<YOUR_PACKAGE_NAME>` (replace with your github username and the name
you want to give to your package)

```json
"name": "@<YOUR_GITHUB_USERNAME>/<YOUR_PACKAGE_NAME>",
```

**CHECK THE VERSION NUMBER IN YOUR PACKAGE.JSON FILE !!!!! YOU CANT PUBLISH A PACKAGE WITH A VERSION NUMBER THAT ALREADY EXISTS OR LOWER
THAN THE PREVIOUS ONE !!!!!**

You can now build and publish your package. To do so, you need to run the following command:

```bash
npm run build
npm publish
```

You should see a success message in your terminal. ![Success message](./react_npm_modal/img/Capture%20d'écran%202023-07-10%20180512.png)

You can now check your package on GitHub. To do so, you need to go to your GitHub Profile and click on the `packages` tab. You should see
your package displayed. ![GitHub packages](./react_npm_modal/img/Capture%20d'écran%202023-07-10%20180702.png)

### VI. Install your package

Now that you have your package published, you can install it in any other project. To do so, you need to run the following command:

from NPM

```bash
npm install your_package_name
```

from GitHub

```bash
npm install @<YOUR_GITHUB_USERNAME>/<YOUR_PACKAGE_NAME>
```

### VII. Import your package

Now that you have your package installed, you can import it in any other project. To do so, you need to run the following command:

```javascript
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
