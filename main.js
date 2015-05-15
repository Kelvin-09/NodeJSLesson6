var fibonacci = function (n) {
	if ('number' !== typeof n) {
		throw new Error('n should be a Number');
	} else if (0 > n) {
		throw new Error('n should >= 0');
	} else if (10 < n) {
		throw new Error('n should <= 10');
	} else if (0 === n) {
		return 0;
	} else if (1 === n) {
		return 1;
	} else {
		return fibonacci(n - 1) + fibonacci(n - 2);
	}
}

exports.fibonacci = fibonacci;

if (require.main === module) {
	var n = Number(process.argv[2]);
	console.log('fibonacci(' + n + ') is ' + fibonacci(n));
}