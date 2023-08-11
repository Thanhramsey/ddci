$(document).ready(function () {
  $("#slide-43-layer-17").click();
  $("#gioithieu").show();
  $("#tochuc").hide();
  $("#phuongphap").hide();
});

function gioithieu() {
  $("#gioithieu").show();
  $("#tochuc").hide();
  $("#phuongphap").hide();
}

function tochuc() {
  $("#gioithieu").hide();
  $("#tochuc").show();
  $("#phuongphap").hide();
}

function phuongphap() {
  $("#gioithieu").hide();
  $("#tochuc").hide();
  $("#phuongphap").show();
}
