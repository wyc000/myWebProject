"use strict";var _createClass=function(){function r(e,t){for(var o=0;o<t.length;o++){var r=t[o];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(e,t,o){return t&&r(e.prototype,t),o&&r(e,o),e}}();function _classCallCheck(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}window.tool=window.Tool=function(){var e,t=function(){function e(){_classCallCheck(this,e),this.flag=!1,window.getComputedStyle&&(this.flag=!0)}return _createClass(e,[{key:"noConflict",value:function(){return this}},{key:"getStyle",value:function(e,t){return this.flag?window.getComputedStyle(e)[t]:e.currentStyle[t]}},{key:"setStyle",value:function(e,t){for(var o in t)e.style[o]=t[o]}},{key:"random",value:function(e){var t=1<arguments.length&&void 0!==arguments[1]?arguments[1]:0,o=e,r=t;return e<t&&(o=t,r=e),Math.floor(Math.random()*(o-r))+r}},{key:"getColor",value:function(){return"rgb("+this.random(256)+","+this.random(256)+","+this.random(256)+")"}},{key:"bindEvent",value:function(e,t,o){e.addEventListener?e.addEventListener(t,o):e.attachEvent?e.attachEvent("on"+t,o):e["on"+t]=o}},{key:"unBind",value:function(e,t,o){e.removeEventListener?e.removeEventListener(t,o):e.detachEvent?e.detachEvent("on"+t,o):e["on"+t]=null}},{key:"noRepeat",value:function(e){for(var t=0;t<e.length-1;t++)for(var o=t+1;o<e.length;o++)e[t]===e[o]&&(e.splice(o,1),o--)}},{key:"animate",value:function(n,e,s){var i=this,c=0,l=0,t=function(o){c++;var r=e[o];"opacity"===o&&(r*=100);var a=setInterval(function(){var e=i.getStyle(n,o);"opacity"===o&&(e*=100),e=parseInt(e);var t=(r-e)/20;e+=t=0<t?Math.ceil(t):Math.floor(t),n.style[o]="opacity"===o?e/100:e+"px",e===r&&(clearInterval(a),++l===c&&s())},20)};for(var o in e)t(o)}},{key:"sendAjax",value:function(t){if(!t.url)throw new Error("地址必传");if("[object String]"!==Object.prototype.toString.call(t.url))throw new Error("地址必须正确");if(t.method||(t.method="get"),"get"!==t.method.toLowerCase()&&"post"!==t.method.toLowerCase())throw new Error("请求方式错误");if(void 0===t.async&&(t.async=!0),"[object Boolean]"!==Object.prototype.toString.call(t.async))throw new Error("async必须是布尔值");var e;if(t.data){if("[object String]"!==Object.prototype.toString.call(t.data))e=t.data;else{if("[object Object]"===Object.prototype.toString.call(t.data))throw new Error("数据必须是字符串或对象");for(var o in e="",t.data)e+="&"+o+"="+t.data[o];e=e.slice(1)}"get"===t.method.toLowerCase()&&(t.url+="?"+e)}if(t.success||(t.success=function(){}),t.error||(t.error=function(){}),"[object Function]"!==Object.prototype.toString.call(t.success))throw new Error("success必须是函数");if("[object Function]"!==Object.prototype.toString.call(t.error))throw new Error("error必须是函数");if(t.dataType||(t.dataType="json"),"json"!==t.dataType.toLowerCase()&&"string"!==t.dataType.toLowerCase()&&"xml"!==t.dataType.toLowerCase())throw new Error("dataType必须是string或json或xml");var r=new XMLHttpRequest;if(r.onreadystatechange=function(){if(4===r.readyState)if(200<=r.status&&r.status<300){switch(t.dataType.toLowerCase()){case"json":var e=r.responseText;e=JSON.parse(e);break;case"string":e=r.responseText;break;case"xml":e=r.responseXML}t.success(e)}else t.error()},r.open(t.method,t.url,t.async),t.data&&"post"===t.method.toLowerCase())return r.setRequestHeader("content-type","application/x-www-form-urlencoded"),r.send(e),!1;r.send()}},{key:"promiseAjax",value:function(n){return new Promise(function(t,o){if(!n.url)throw new Error("地址必传");if("[object String]"!==Object.prototype.toString.call(n.url))throw new Error("地址必须正确");if(n.method||(n.method="get"),"get"!==n.method.toLowerCase()&&"post"!==n.method.toLowerCase())throw new Error("请求方式错误");if(void 0===n.async&&(n.async=!0),"[object Boolean]"!==Object.prototype.toString.call(n.async))throw new Error("async必须是布尔值");var e;if(n.data){if("[object String]"!==Object.prototype.toString.call(n.data))e=n.data;else{if("[object Object]"===Object.prototype.toString.call(n.data))throw new Error("数据必须是字符串或对象");for(var r in e="",n.data)e+="&"+r+"="+n.data[r];e=e.slice(1)}"get"===n.method.toLowerCase()&&(n.url+="?"+e)}if(n.dataType||(n.dataType="json"),"json"!==n.dataType.toLowerCase()&&"string"!==n.dataType.toLowerCase()&&"xml"!==n.dataType.toLowerCase())throw new Error("dataType必须是string或json或xml");var a=new XMLHttpRequest;if(a.onreadystatechange=function(){if(4===a.readyState)if(200<=a.status&&a.status<300){switch(n.dataType.toLowerCase()){case"json":var e=a.responseText;e=JSON.parse(e);break;case"string":e=a.responseText;break;case"xml":e=a.responseXML}t(e)}else o()},a.open(n.method,n.url,n.async),n.data&&"post"===n.method.toLowerCase())return a.setRequestHeader("content-type","application/x-www-form-urlencoded"),a.send(e),!1;a.send()})}},{key:"setCookie",value:function(e,t,o){var r=3<arguments.length&&void 0!==arguments[3]?arguments[3]:"/";document.cookie=e+"="+t+";max-age="+o+";path="+r}},{key:"getCookie",value:function(e){for(var t=document.cookie.split("; "),o=0;o<t.length;o++){var r=t[o].split("=");if(e===r[0])return r[1]}}},{key:"removeCookie",value:function(e){var t=1<arguments.length&&void 0!==arguments[1]?arguments[1]:"/";this.setCookie(e,null,0,t)}},{key:"jsonp",value:function(e,t,o,r,a){var n=document.createElement("script");e+="?";var s="";for(var i in t[r]=o,t)e+=s+i+"="+t[i],s="&";window[o]=a,n.setAttribute("src",e),document.head.appendChild(n),document.head.removeChild(n)}}]),e}();return e||(e=new t),e}();