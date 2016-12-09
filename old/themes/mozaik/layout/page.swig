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
            <article class="article-container" itemscope itemtype="http://schema.org/Article">
                <div class="article">
                    <div class="article-content" itemprop="articleBody" data-swiftype-index="true">
                        {{ page_anchor(page.content) }}
                    </div>
                    <footer class="article-footer">
                        <time class="article-footer-updated" datetime="{{ date_xml(page.updated) }}" itemprop="dateModified">{{ 'Last updated: ' + date(page.updated) }}</time>
                        {{ page_nav() }}
                    </footer>
                    {{ partial('partial/comment') }}
                </div>
            </article>
            {{ partial('partial/sidebar') }}
        </div>
    </div>
</div>
