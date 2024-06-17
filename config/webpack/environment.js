// webpack/environment.js

const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

// Add this line to resolve @rails/actioncable
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  ActionCable: '@rails/actioncable',
}))

module.exports = environment
