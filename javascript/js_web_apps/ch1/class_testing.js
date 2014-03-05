var Class = function() {
	var klass = function() {
		this.init.apply(this, arguments);
	};
	klass.prototype.init = function(){};
	return klass;
};

var Peson = new Class;

Person.prototype.init = function() {
	//Called on person instantiation
};

Person.find = function(id) { 
	return "found id" + id 
};

//alias prototype to make it wasier to access
Person.fn = Person.prototype;

Person.fn.run = function() { return "I'm running!" };

var person = new Person;
