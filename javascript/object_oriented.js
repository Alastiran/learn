var Class = function() {
	console.log("inside class");
	console.log(this);
	console.log(arguments);
	var klass = function() {
		console.log(this);
		console.log('this line above is /this/ from inside klass');
		this.init.apply(this, arguments);
	}
	klass.prototype.init = function(){};
	return klass;
};

/*
 * var Image = function(data) {
	this.height = data.height;
	this.width  = data.width;
}
*/
var Image = new Class;

Image.find = function(id) {
	console.log('found ' + id);
	return id;
};

Image.prototype.init = function() {
	console.log('started image');
	console.log(arguments);
	this.height = arguments[0];
	this.width = arguments[1];
};

Image.prototype.resize = function(newHeight, newWidth) {
	this.height = newHeight || this.height;
	this.width  = newWidth || this.width;
};

Image.prototype.scope_out = function() {
	console.log('inside scope_out');
	console.log(this);

	this.party_time = 'yeah it is party time';
	console.log('garbage at the end to control return value');
}

var hologram = new Image;


function greet (gender, age, name) {
	var salutation = gender == 'male' ? 'Mr.' : "Ms.";
	if (age > 25) {
		return "Hello, " + salutation + name + ".";
	} else {
		return "hey, " + name + ".";
	}
}

var greetAnAdultMail = greet.bind(null, 'male', 45);
