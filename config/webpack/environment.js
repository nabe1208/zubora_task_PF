const { environment } = require('@rails/webpacker')

// 6/30 追記 yarn add jQueryで導入後の環境設定
const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
	$: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    // skippr
    "window.jQuery": "jquery"
  })
)

module.exports = environment


