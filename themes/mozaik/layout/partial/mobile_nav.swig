<nav id="mobile-nav">
    <div id="mobile-nav-inner">
        <ul id="mobile-nav-list">
            {% for link in site.data.menu %}
                <li class="mobile-nav-item">
                    <a href="{{ url_for(link) }}" class="mobile-nav-link{% if is_current(link) %}{{ ' _is-active' }}{% endif %}">{{ loop.key }}</a>
                </li>
            {% endfor %}
            <li class="mobile-nav-item">
                <a href="https://github.com/{{ config.github }}" class="mobile-nav-link" rel="external" target="_blank">GitHub</a>
            </li>
            <li class="mobile-nav-item">
                <a href="http://mozaik.herokuapp.com/" target="_blank" class="mobile-nav-link">Demo</a>
            </li>
        </ul>
        {% if page.layout == 'page' %}
            {{ doc_sidebar('mobile-nav') }}
        {% endif %}
    </div>
</nav>
