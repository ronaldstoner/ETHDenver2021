const webpack = require('webpack')

const path = require('path');
const npm_package = require('./package.json')

module.exports = (env, argv) => {

  const min = (argv.mode === 'production') ? '.min' : ''
  const version = npm_package.version.replace('-', '_')
  const bundleName = `democracy.${version}${min}`
  const entry = {}
  
  entry[bundleName] = [
       './exports/api.js',
  ]
  return { module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        use: {
          loader: "babel-loader",
          options: {
            presets: ["@babel/preset-env"]
          }
        }
      },
    ]
  },
  entry: entry,
  output: {
    filename: '[name].js',
    path: path.resolve(__dirname, 'dist'),
    libraryTarget: 'var',
    library: 'demo',
  },
  target: 'node',
  node: {
  },
	resolve: {
    alias: {
    }
  },
  plugins: [ 
    new webpack.ProvidePlugin({
    }),
  ]
}
}
