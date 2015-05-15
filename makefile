test:
	./node_modules/mocha/bin/mocha

#cov test-cov:
#	./node_modules/.bin/istanbul cover _mocha

#cov test-cov:
#	istanbul cover --hook-run-in-context node_modules/mocha/bin/_mocha

cov test-coverall:
	istanbul cover ./node_modules/mocha/bin/_mocha --report lcovonly -- -R spec && cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js && rm -rf ./coverage

#.PHONY: test cov test-cov 
.PHONY: test cov test-cov test-coverall