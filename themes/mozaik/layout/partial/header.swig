<header id="header">
  <div id="header-inner" class="wrapper">
    <h1 id="logo-wrap">
      <a href="{{ url_for('/') }}" id="logo">Mozaïk</a>
    </h1>
    <nav id="main-nav">
      <ul>
        {% for link in site.data.menu %}
          <li class="main-nav-item">
            <a href="{{ url_for(link) }}" class="main-nav-link">{{ loop.key }}</a>
          </li>
        {% endfor %}
        <li class="main-nav-item">
          <a href="https://github.com/{{ config.github }}" class="main-nav-link"><i class="fa fa-github-alt"></i></a>
        </li>
      </ul>
    </nav>
    <a id="mobile-nav-toggle">
      <span class="mobile-nav-toggle-bar"></span>
      <span class="mobile-nav-toggle-bar"></span>
      <span class="mobile-nav-toggle-bar"></span>
    </a>
    <a id="mobile-search-btn" class="st-search-launcher"></a>
  </div>
</header>
