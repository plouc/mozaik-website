<div class="sub-header">
  <div class="wrapper">
    <h1 class="page-title">{{ page.title }}</h1>
    {% if page.baseline %}
      <div class="page-baseline">{{ page.baseline }}</div>
    {% endif %}
  </div>
</div>
<div id="content-wrap">
  <div id="content" class="wrapper">
    <div id="content-inner">
      <article class="article-container" itemscope itemtype="http://schema.org/Article">
        <div class="article-inner">
          <div class="article">
            <div class="inner">
              <div class="article-content" itemprop="articleBody" data-swiftype-index="true">
                {{ page_anchor(page.content) }}
              </div>
              <footer class="article-footer">
                <time class="article-footer-updated" datetime="{{ date_xml(page.updated) }}" itemprop="dateModified">{{ 'Last updated: ' + date(page.updated) }}</time>
                {{ page_nav() }}
              </footer>
              {{ partial('partial/comment') }}
            </div>
          </div>
          <aside id="article-toc" role="navigation">
            <div id="article-toc-inner">
              <strong class="sidebar-title">Contents</strong>
              {{ toc(page.content, {list_number: false}) }}
              <a href="#" id="article-toc-top">Back to top</a>
            </div>
          </aside>
        </div>
      </article>
      {{ partial('partial/sidebar') }}
    </div>
  </div>
</div>
