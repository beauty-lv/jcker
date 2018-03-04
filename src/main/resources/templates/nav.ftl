    <nav class="navbar navbar-expand-md bg-white fixed-top rounded jcker-nav">
        <div class="container">

            <a class="navbar-brand" href="/"><img class="fluid" src="/images/logo.png"
                                                  style="width:100px;height:22px;"></a><#---->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample10"
                    aria-controls="navbarsExample10" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-md-end" id="navbarsExample10">
                <ul class="navbar-nav">
                <#if menuList??>
                    <#list menuList as menu>
                        <li class="nav-item">
                            <a class="nav-link" href="${menu.link}">${menu.name}</a>
                        </li>
                    </#list>
                <#else>
                    <li class="nav-item active">
                        <a class="nav-link" href="/">首页</a>
                    </li>
                </#if>
                </ul>
                <form class="form-inline my-2 my-md-2" action="/search/articles">
                    <input class="form-control" placeholder="Search" aria-label="Search" type="text">
                </form>
            </div>
        </div>
    </nav>
