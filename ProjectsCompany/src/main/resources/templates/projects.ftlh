<#import "blocks/template.ftlh" as t>
<@t.template user>

    <h1 style="text-align: center">Поиск проекта</h1><hr>
    <form method="get" action="/">
        <div class="form-row">
             <div class="form-group col-md-12">
                <label for="searchWord">Поиск по проектам</label>
                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                       id="searchWord">
             </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button style="width: 100%" type="submit" class="btn btn-dark">Поиск</button>
        </div>
    </form>
    <hr>
    <div class="card-columns">
        <#list projects as project>
            <a href="/project/${project.id}" class="project-link">
                <div class="card text-white bg-dark my-3 project">
                   <div class="card-body">
                        <h5 class="card-title">${project.title}</h5>
                        <p class="card-text">${project.statusProject}</p>
                    </div>
                   <div class="card-footer">
                        ${project.status}
                   </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>
</@t.template>