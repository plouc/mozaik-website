{% set page.title = 'News' %}
{#{% set page.baseline = 'Follow Mozaïk activity' %}#}
<div class="strata_out sub-header">
    <div class="strata">
        <div class="strata_in">
            <h1 class="page-title">{{ page.title }}</h1>
            {% if page.baseline %}
                <div class="page-baseline">{{ page.baseline }}</div>
            {% endif %}
        </div>
    </div>
</div>
<div class="strata_out page_content">
    <div class="strata">
        <div class="strata_in">
            {% for post in page.posts %}
                {% if loop.index == 1 %}
                    {{ partial('partial/post', {post: post}) }}
                {% else %}
                    <article class="article post archive-post" itemscope itemtype="http://schema.org/Article">
                        <a class="archive-post-link" href="{{ url_for(post.path) }}">
                            <strong class="archive-post-title" itemprop="name">{{ post.title }}</strong>
                            <span class="archive-post-date">{{ time_tag(post.date) }}</span>
                        </a>
                    </article>
                {% endif %}
            {% endfor %}
        </div>
    </div>
</div>
