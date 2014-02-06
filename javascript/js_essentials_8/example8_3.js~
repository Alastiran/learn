var extend = (function() {
	for (var p in {toString:null}) {
		return function extend_me_please(o) {
			for (var i = 1; i < arguments.length; i++) {
				var source = arguments[i];
				for (var prop in source) o[prop] = source[prop];
			}
			return o;
		};
	}

	// special cases
	var protoprops = [ "toString", "valueOf", "constrcutor", "hasOwnProperty",
						"isPrototypeOf", "propertyIsEnumerable", "toLocalString"];

	return function patched_extend(o) {
		for (var i = 1; i < arguments.length; i++) {
			var source = arguments[i];

			for (var prop in source) o[prop] = source[prop];

			for (var j = 0; j < protoprops.length; j++) {
				prop = protoprops[j];
				if (source.hasOwnProperty(prop)) o[prop] = source[prop];
			}
		}
		return o;
	};

}());

var first = { primo: 'my cousin' };
var second = { segundo: 'just a counter' };

extend(first, second);

console.log(first);
