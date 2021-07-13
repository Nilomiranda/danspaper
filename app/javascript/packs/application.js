// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);

// todo -> to implement
// https://derk-jan.com/2020/10/rails-ujs-custom-confirm/
//
// const nativeConfirm = Rails.confirm;
//
// let __SkipConfirmation = false;
//
// Rails.confirm = (message, element) => {
//     console.log("message", message)
//
//     if (__SkipConfirmation) {
//         return true;
//     }
//
//     const dialogId = element.getAttribute('data-confirm-dialog');
//     if (!dialogId) {
//         return nativeConfirm(message, element);
//     }
// }
