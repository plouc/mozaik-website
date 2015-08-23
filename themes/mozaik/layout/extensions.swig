<div class="strata_out sub-header">
    <div class="strata">
        <div class="strata_in">
            <h1 class="page-title">{{ page.title }}</h1>
            <div class="page-baseline">Extend Mozaïk with custom extensions</div>
        </div>
    </div>
</div>
<div class="strata_out page_content">
    <div class="strata">
        <div class="strata_in">
            <div class="extensions_intro">
                <strong>Mozaïk</strong> widgets are maintained as separate modules,
                available as mozaik-ext-&lt;name&gt; npm packages.<br/>
                Below is a list of some already existing extensions.
            </div>
            <div class="extensions">
                {% for extension in _.sortBy(site.data[page.data], 'name') %}
                    {{ partial('partial/' + page.partial, { extension: extension }) }}
                {% endfor %}
            </div>
        </div>
    </div>
</div>
<script>window.SEARCH_INDEX = {{ lunr_index_extensions(site.data.extensions) }}</script>
