(function() {
  var t = window;
  try {
    do {
      t = t.parent;
      if (t.QZONE && (t.QZONE.FrontPage && t.g_iUin)) {
        break;
      }
    } while (t != top);
  } catch (ex) {
  }
  if (typeof siDomain == "undefined") {
    siDomain = t.siDomain || "qzonestyle.gtimg.cn";
  }
  g_V = t.g_V || {};
  g_V.jq = g_V.jq || "1.9.1";
  g_V.req = g_V.req || "0.0.9";
  window.g_isGrayRelease = t.g_isGrayRelease || false;
  window.g_cdn_proto = t.g_cdn_proto || "";
  window.g_proto = t.g_proto || "";
})();
window.seajs && seajs.config({charset:"utf-8", timeout:5 * 60 * 1E3, debug:0, paths:{"v8":(window.g_cdn_proto || window.location.protocol) + "//" + siDomain + "/qzone/v8", "photo.v7":(window.g_cdn_proto || window.location.protocol) + "//" + siDomain + "/qzone/photo/v7/js", "cssBase":(window.g_cdn_proto || window.location.protocol) + "//" + siDomain, "app":(window.g_cdn_proto || window.location.protocol) + "//" + siDomain + "/qzone/app", "qzact":(window.g_cdn_proto || window.location.protocol) + "//" + 
siDomain + "/qzone/qzact", "mall.v8":(window.g_cdn_proto || window.location.protocol) + "//" + siDomain + "/qzone/mall/v8"}, alias:{"jquery":(window.g_cdn_proto || window.location.protocol) + "//" + siDomain + "/ac/lib/jquery/jquery-" + g_V.jq, "migrate-plugin":"v8/engine/migrate-plugin.js", "interface":"v8/core/interface_mini.js", "app_engine_base":"v8/core/app_engine_base.js", "app_engine":function() {
  if (window.g_isGrayRelease) {
    return window.location.protocol + "//qzonestyle.gtimg.cn/c/=/qzone/v8/core/app_engine_base.js,/qzone/v8/core/app_engine" + (window.g_diffModules && g_diffModules.engine ? g_diffModules.engine : "") + "_v2.js?max_age=72000";
  }
  return "v8/core/app_engine" + (window.g_diffModules && g_diffModules.engine ? g_diffModules.engine : "") + ".js?max_age=72000";
}(), "changelog_data":(window.g_cdn_proto || window.location.protocol) + "//" + siDomain + "/qzone/v6/v6_config/changelog_data.js", "console-plus":"v8/engine/console-plus/console-plus.js", "embeded":"/applib/embeded.js", "request":"v8/engine/request/request_" + g_V.req}, map:[[/^.+\/lib\/jquery\.js$/, (window.g_cdn_proto || window.location.protocol) + "//" + siDomain + "/ac/lib/jquery/jquery-" + g_V.jq + ".js"]], comboSyntax:["c/=", ","], comboIncludes:/\/qzone\/v8/, comboExcludes:/jquery|app_engine|music|qzone\/v8\/index\/msgboard/, 
preload:window.isIframe ? ["jquery", "migrate-plugin", "console-plus", "request"] : ["jquery", "migrate-plugin", "interface", "console-plus", "app_engine", "request"]});
window.seajs && seajs.on("resolve", function(data) {
  if ((location.protocol === "https:" || window.g_cdn_proto === "https:") && (data && (data.id && (data.refUri && data.id.indexOf("http://") === 0)))) {
    if (data.id.indexOf("http://qzs.qzone.qq.com/") == 0 || (data.id.indexOf("http://qzonestyle.gtimg.cn/") == 0 || (data.id.indexOf("http://qzs.qq.com/") == 0 || data.id.indexOf("http://imgcache.qq.com/") == 0))) {
      data.id = data.id.replace("http://", "https://");
    }
  }
});

