const config = require('./adapt_authoring/conf/config.json');
const herokuConfig = Object.extend({}, config, {
    serverPort: process.env.PORT,
});

for (const [key, value] of Object.entries(herokuConfig)) {
    process.env[key] = value;
}

require('./adapt_authoring/server');
