const types = require('@commitlint/config-angular-type-enum');

module.exports = {
  extends: ['@commitlint/config-angular'],
  rules: {
    'type-enum': [1, 'always', types.value().concat(['config'])],
  },
};
