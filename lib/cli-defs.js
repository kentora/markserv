module.exports = {
	flags: {
		port: {
			alias: 'p',
			default: '8642'
		},

		livereloadport: {
			alias: 'l',
			default: 35729
		},
		browser: {
			alias: 'b',
			default: true
		},

		address: {
			alias: 'a',
			default: 'localhost'
		},

		silent: {
			alias: 's',
			default: false
		},

		verbose: {
			alias: 'v',
			default: false
		}
	}
}
