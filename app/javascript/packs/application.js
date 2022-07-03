// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
// 6/30 導入後、追記
import "jquery"
// 追記6/30 <%= javascript_pack_tag 'jQ/list' %> を使用するhtmlファイルに記述する。
import "jQ/list.js"
import "popper.js";
import "bootstrap";
import '../stylesheets/application'

Rails.start()
Turbolinks.start()
ActiveStorage.start()
