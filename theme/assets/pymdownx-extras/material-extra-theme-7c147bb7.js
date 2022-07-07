

!function(){"use strict";var e;e=function(e){"true"===localStorage.getItem("data-md-prefers-color-scheme")&&document.querySelector("body").setAttribute("data-md-color-scheme",e.matches?"dracula":"default")},new MutationObserver((function(t){t.forEach((function(t){if("childList"===t.type&&t.addedNodes.length)for(var a=0;a<t.addedNodes.length;a++){var r=t.addedNodes[a];if(1===r.nodeType&&"body"===r.tagName.toLowerCase()){d=r,o=void 0,c=void 0,l=void 0,o="not all"!==window.matchMedia("(prefers-color-scheme)").media,c=localStorage.getItem("data-md-color-scheme"),l=localStorage.getItem("data-md-prefers-color-scheme"),c||(c="dracula"),l||(l="false"),"true"===l&&o?c=window.matchMedia("(prefers-color-scheme: dark)").matches?"dracula":"default":l="false",d.setAttribute("data-md-prefers-color-scheme",l),d.setAttribute("data-md-color-scheme",c),o&&window.matchMedia("(prefers-color-scheme: dark)").addListener(e);break}}var d,o,c,l}))})).observe(document.querySelector("html"),{childList:!0}),window.toggleScheme=function(){var e=document.querySelector("body"),t="not all"!==window.matchMedia("(prefers-color-scheme)").media,a=e.getAttribute("data-md-color-scheme"),r=e.getAttribute("data-md-prefers-color-scheme");t&&"default"===a&&"true"!==r?(r="true",a=window.matchMedia("(prefers-color-scheme: dark)").matches?"dracula":"default"):t&&"true"===r?(r="false",a="dracula"):"dracula"===a?(r="false",a="default"):(r="false",a="dracula"),localStorage.setItem("data-md-prefers-color-scheme",r),e.setAttribute("data-md-prefers-color-scheme",r),e.setAttribute("data-md-color-scheme",a)}}();

  var _paq = window._paq = window._paq || [];
  /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//w.nr1.nu/matomo/";
    _paq.push(['setTrackerUrl', u+'matomo.php']);
    _paq.push(['setSiteId', '1']);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
  })();

<script async src="https://www.googletagmanager.com/gtag/js?id=G-RBKYY03GE2"></script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-RBKYY03GE2');


//# sourceMappingURL=material-extra-theme-7c147bb7.js.map
