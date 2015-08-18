<header id="header">
    <div id="header-inner" class="wrapper">
        <h1 id="logo-wrap">
            <a href="{{ config.root }}" id="logo">Mozaïk</a>
        </h1>
        {% spaceless %}
        <nav class="main-nav">
            <ul>
                {% for link in site.data.menu %}
                    <li class="main-nav_item">
                        <a href="{{ url_for(link) }}" class="main-nav_link{% if is_current(link) %}{{ ' _is-active' }}{% endif %}">{{ loop.key }}</a>
                    </li>
                {% endfor %}
                <li class="main-nav_item">
                    <a href="https://github.com/{{ config.github }}" target="_blank" class="main-nav_link">
                        <!--
                        <i class="fa fa-github-alt"></i>
                        -->
                        Github
                    </a>
                </li>
                <li class="main-nav_item main-nav_item-demo">
                    <a href="http://mozaik.herokuapp.com/" target="_blank" class="main-nav_link main-nav_link-demo">demo</a>
                </li>
            </ul>
        </nav>
        {% endspaceless %}
        <a id="mobile-nav-toggle">
            <span class="mobile-nav-toggle-bar"></span>
            <span class="mobile-nav-toggle-bar"></span>
            <span class="mobile-nav-toggle-bar"></span>
        </a>
        <a id="mobile-search-btn" class="st-search-launcher"></a>
    </div>
</header>
