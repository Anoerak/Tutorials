# Absolute Path with React

Aren't you tired of using relative path for your imports? Wasting time trying to understand the folders' structure of a project you've been asked to work on? Spending too much time looking for a file?

````javascript
import React from 'react';
import { Routes, Route } from 'react-router-dom';

import Header from '../../../components/header/Header';
import Footer from '../../../components/footer/Footer';

import Home from '../../../pages/home/Home';
import Deratisation from '../../../pages/deratisation/Deratisation';
import Contact from '../../../pages/contact/Contact';
import Devis from '../../../pages/devis/Devis';
````

Wouldn't be easier using asbolute path with clear naming?

````javascript
import React from 'react';
import { Routes, Route } from 'react-router-dom';

import Header from '@Components/header/Header';
import Footer from '@Ccomponents/footer/Footer';

import Home from '@Pages/home/Home';
import Deratisation from '@Pages/deratisation/Deratisation';
import Contact from '@Pages/contact/Contact';
import Devis from '@Pages/devis/Devis';
````

## Welcome Craco

Well I don't know about you but I do. So I'm sharing this tool with you hoping it will help some of us.
Here is how it works.

### I. Install Craco

using yarn or npm:

````
yarn add @craco/craco

npm install @craco/craco
````

### II. Craco.config.js

You want to create a `craco.config.js` file at the root of your project and copy/paste this code:

````javascript
const path = require(`path`);

module.exports = {
  webpack: {
    alias: {
      '@': path.resolve(__dirname, 'src/'),
      '@Components': path.resolve(__dirname, 'src/components'),
      '@Your_next_Alias': path.resolve(__dirname, 'src/your_next/alias'),
    }
  },
};
````

### III. Update your package.json

You want to update your `package.json` from this:

````javascript
"start": "react-scripts start",
"build": "react-scripts build",
"test": "react-scripts test",
"eject": "react-scripts eject",
````

to this:

````javascript
"start": "craco start",
"build": "craco build",
"test": "craco test",
"eject": "craco eject",
````

### IV. Final step, your `jsconfig.json`

Finally, in order to avoid VSCode to indicate an eslint error on your new path, go to your `jsconfig.json`at the root of your project's folder (or create a file if it doesn't exist) and add this:

````json
{
	"compilerOptions": {
		"checkJs": true,
		"paths": {
			"@Components/*": ["components/*"],
			"@Your_next_Alias/*": ["your_next/alias/*"],
		},
		"baseUrl": "src"
	},
	"exclude": ["node_modules", "build", "dist"],
	"include": ["src"]
}
````

DON'T FORGET TO RESTART YOUR SERVER `npm start` for the changes to take effect!!!!

That's it!!!

You can now enjoy absolute paths with your React project :)

See you on the next one ;)
