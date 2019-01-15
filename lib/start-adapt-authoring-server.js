const config = require('./adapt_authoring/conf/config.json');
const herokuConfig = Object.assign({}, config, {
    serverPort: process.env.PORT,
});

// Adapt currently requires all your config to come from environment variables or config.json
// so take all the values out of config.json and put them on the environment, overriding the port
for (const [key, value] of Object.entries(herokuConfig)) {
    process.env[key] = value;
}

require('./adapt_authoring/server');
