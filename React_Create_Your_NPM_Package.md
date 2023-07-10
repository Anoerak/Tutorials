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
│   └── serviceWorker.js
├── .gitignore
├── package.json
├── README.md
└── yarn.lock
```
