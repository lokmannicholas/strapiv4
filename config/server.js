module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 80),
  url: env("PUBLIC_URL", "http://18.167.77.5"),
  app: {
    keys: env.array('APP_KEYS'),
  },
});

