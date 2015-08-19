'use strict';

var pathFn  = require('path');
var _       = require('lodash');
var url     = require('url');
var cheerio = require('cheerio');
var lunr    = require('lunr');


function startsWith(str, start) {
    return str.substring(0, start.length) === start;
}


hexo.extend.helper.register('page_nav', function () {
    var type    = this.page.canonical_path.split('/')[0];
    var sidebar = this.site.data.sidebar[type];
    var path    = pathFn.basename(this.path);
    var list    = {};
    var prefix  = 'sidebar.' + type + '.';

    for (var i in sidebar) {
        for (var j in sidebar[i]) {
            list[sidebar[i][j]] = j;
        }
    }

    var keys   = Object.keys(list);
    var index  = keys.indexOf(path);
    var result = [];

    if (index > 0) {
        result.push([
            '<a href="' + keys[index - 1] + '" class="article-footer-prev" title="' + list[keys[index - 1]] + '">',
                '<i class="fa fa-chevron-left"></i><span>' + list[keys[index - 1]] + '</span>',
            '</a>'
        ].join(''));
    }

    if (index < keys.length - 1) {
        result.push([
            '<a href="' + keys[index + 1] + '" class="article-footer-next" title="' + list[keys[index + 1]] + '">',
                '<span>' + list[keys[index + 1]] + '</span><i class="fa fa-chevron-right"></i>',
            '</a>'
        ].join(''));
    }

    return result.join('');
});


hexo.extend.helper.register('doc_sidebar', function (className) {
    var type    = this.page.canonical_path.split('/')[0];
    var sidebar = this.site.data.sidebar[type];
    var path    = pathFn.basename(this.path);
    var result  = '';
    var self    = this;
    var prefix  = 'sidebar.' + type + '.';

    _.each(sidebar, function (menu, title) {
        result += '<strong class="' + className + '-title">' + title + '</strong>';

        _.each(menu, function (link, text) {
            var itemClass = className + '-link';
            if (link === path) {
                itemClass += ' current';
            }

            result += '<a href="' + link + '" class="' + itemClass + '">' + text + '</a>';
        })
    });

    return result;
});


hexo.extend.helper.register('page_anchor', function (str) {
    var $        = cheerio.load(str, { decodeEntities: false });
    var headings = $('h1, h2');

    if (!headings.length) { return str; }

    headings.each(function () {
        var id = $(this).attr('id');

        $(this)
            .addClass('article-heading')
            .append('<a class="article-anchor" href="#' + id + '" aria-hidden="true"></a>')
        ;
    });

    return $.html();
});


hexo.extend.helper.register('lunr_index_extensions', function (data) {
    var index = lunr(function () {
        this.field('name', { boost: 10 });
        this.field('tags', { boost: 50 });
        this.field('description');
        this.ref('id');
    });

    _.sortBy(data, 'name').forEach(function (item, i) {
        index.add(_.assign({ id: i }, item));
    });

    return JSON.stringify(index.toJSON());
});
