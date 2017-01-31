# Polymer Feedback Form

Feedback form build using Polymer.

[![Build Status](https://travis-ci.org/Bruce17/polymer-feedback-form.svg?branch=master)](https://travis-ci.org/Bruce17/polymer-feedback-form)

This is a simple reusable feedback form. It was build to work in a Symfony application environment, but it should be easily adjustable to other systems and needs. The element will display itself at the edge of the browser's window. A click on it will open the feedback form in a modal. The feedback will be sent via ajax to the backend url defined via the attribute `url` (see [Example](#Example)).

Please visit the [demo application](https://bruce17.github.io/polymer-feedback-form/) to see this feedback form in action.


## Installation

**TODO**


## Options

| Parameter        	| Type       	| Description                                                                          	| Required 	|
|------------------	|------------	|--------------------------------------------------------------------------------------	|----------	|
| url              	| string     	| Backend url to which the form content will be sent.                                  	| ✓        	|
| route            	| string     	| Called route (current site) e.g. a Symfony route "site_index_index".                 	|          	|
| route-parameters 	| array/json 	| Additional router parameters e.g. "id = 42". This might be Symfony route parameters. 	|          	|
| request-uri      	| string     	| Raw request uri without host e.g. "blog/some/page.html"                              	|          	|
| name             	| string     	| Prefilled username e.g. if user is already logged in.                                 |          	|
| email            	| string     	| Prefilled email e.g. if user is already logged in.                                   	|          	|
| with-screenshot   | boolean       | Add a browser screenshot to the feedback form.                                        |           |


## Example

### Basic usage

Just provide a backend url:

```html
<feedback-element url="localhost"></feedback-element>
```

### Additional data

Add some additional route information of the current page:

```html
<feedback-element url="localhost"
                  route="mybundle_controller_action"
                  route-parameters='{"id":42,"foo":"bar","bool":true}'
                  request-uri="localhost/foo"
></feedback-element>
```

### Prefilled username and email field

Add a logged in user's username and email to the feedback form: 

```html
<feedback-element url="localhost"
                  name="foo"
                  email="foo@bar"
></feedback-element>
```


## TODO

* Installation instructions
* Add to:
    * NPM
    * Bower
    * Webcomponents
