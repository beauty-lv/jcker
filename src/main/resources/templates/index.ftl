<!DOCTYPE html>
<html lang="en">
<#include "header.ftl">
<body class="index_body">
<#include "nav.ftl">
<div class="container" style="margin: 100px auto 10px; max-width: 700px;">
<#list pageObject.content as article>
        <div class="index_article" id="article_${article.id}">
            <h3>
                <a href="/article/${article.id}">${article.title}</a>
                <p>${article.preview}...</p>
            </h3>
            <p>
                <span class="" style="font-size: 12px;"><a href="/">Alan Turing</a></span>
                <span class="" style="font-size: 12px;">${article.createDate!'2016-06-02'}</span>
                <span class="" style="font-size: 12px;">浏览（${article.viewNum!'459'}）</span>
                <span class="" style="font-size: 12px;">评论（<a
                        href="/article/${article.id}#comments">${article.commentNum!'31'}</a>）</span>
                <span class="small">#${article.category}</span>
            </p>
        </div>
    </#list>
    <ul class="pagination-sm" id="pagination"></ul>

</div>
<#include "footer.ftl">

</body>
</html>