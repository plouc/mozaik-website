<div class="extension">
    <a href="{{ extension.link }}" class="extension_name" target="_blank">{{ extension.name }}</a>
    <!--
    <div>
        <a href="https://www.npmjs.com/package/{{ extension.name }}">
            <img alt="{{ extension.name }} NPM version" src="https://img.shields.io/npm/v/{{ extension.name }}.svg?style=flat-square">
        </a>
        {% if extension.travis %}
            <a href="https://travis-ci.org/{{ extension.travis }}">
                <img alt="{{ extension.name }} build status" src="https://img.shields.io/travis/{{ extension.travis }}.svg?style=flat-square">
            </a>
        {% endif %}
    </div>
    -->
    <p class="extension_desc">{{ extension.description }}</p>
    <div class="extension_tags">
        {% for tag in extension.tags %}
            <a href="#{{ tag }}" class="extension_tag">{{ tag }}</a>
        {% endfor %}
    </div>
</div>
