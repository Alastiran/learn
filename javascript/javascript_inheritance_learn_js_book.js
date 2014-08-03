function inherit(p) {
	if (p == null) throw TypeError();
	if (Object.create) {
		return Object.create(p);
	}
	var t = typeof p;
	if (t !== "object" && t !== "function") throw TypeError();
	function f() {};
	f.prototype = p;
	return new f();
}

//range.js
function range(from, to) {
	var r = inherit(range.methods);

	r.from = from;
	r.to = to;

	return r;
}

// this prototype object defines methods inherited by all range objects
range.methods = {
	includes: function(x)  { return this.from <= x && x <= this.to; },

	foreach: function(f) {
		for(var x = Math.ceil(this.from); x <= this.to; x++) f(x);
	},

	toString: function() { return "(" + this.from + "..." + this.to + ")"; }
};

