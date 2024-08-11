module.exports = {
	globDirectory: 'Game/',
	globPatterns: [
		'**/*.{txt,js,css,json,png,jpg,ico,html,gif,mp3}'
	],
	maximumFileSizeToCacheInBytes: 5000000000,
	swDest: 'Game/sw.js',
	ignoreURLParametersMatching: [
		/^utm_/,
		/^fbclid$/
	]
};