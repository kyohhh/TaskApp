import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// 作成したファイルをwebpackerに読み込み
import "../stylesheets/application"
import "../js/hoge.js"

// - 検証用 -
// app/javascript/images/フォルダー内の001.jpeg画像を
// webpackerに読み込ませます。
const images = require.context('../images', true)