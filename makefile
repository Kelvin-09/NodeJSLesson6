test:
	./node_modules/mocha/bin/mocha

#cov test-cov:
#	./node_modules/.bin/istanbul cover _mocha

cov test-cov:
	istanbul cover --hook-run-in-context node_modules/mocha/bin/_mocha

.PHONY: test cov test-cov