(function () {
  var page = window.location.pathname.split('/').pop() || 'index.html';

  function active(href) {
    return page === href ? ' class="active"' : '';
  }

  var navEl = document.getElementById('site-nav');
  if (navEl) {
    navEl.outerHTML =
      '<div class="mh-accent-bar"></div>' +
      '<nav class="mh-nav">' +
      '  <div class="mh-nav-inner">' +
      '    <a href="index.html" class="mh-wordmark">markdown<span>heaven</span></a>' +
      '    <ul class="mh-nav-links">' +
      '      <li><a href="index.html#products"' + active('index.html') + '>Products</a></li>' +
      '      <li><a href="guides.html"' + active('guides.html') + '>Guides</a></li>' +
      '      <li><a href="about.html"' + active('about.html') + '>About</a></li>' +
      '    </ul>' +
      '  </div>' +
      '</nav>';
  }

  var footerEl = document.getElementById('site-footer');
  if (footerEl) {
    footerEl.outerHTML =
      '<footer class="mh-footer">' +
      '  <div class="mh-footer-inner">' +
      '    <a href="index.html" class="mh-footer-brand">markdown<span>heaven</span></a>' +
      '    <ul class="mh-footer-links">' +
      '      <li><a href="privacy.html">Privacy</a></li>' +
      '      <li><a href="mailto:heaven@markdownheaven.com">Contact</a></li>' +
      '      <li><a href="about.html">About</a></li>' +
      '    </ul>' +
      '    <span class="mh-footer-copy">© 2026 RocketMade Productions AB</span>' +
      '  </div>' +
      '</footer>';
  }
})();
