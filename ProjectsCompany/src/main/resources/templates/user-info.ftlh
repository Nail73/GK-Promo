<#import "blocks/template.ftlh" as t>
<@t.template userByPrincipal>

    <h1 style="text-align: center">Информация о пользователе</h1>
    <hr>
    <div style="text-align: center">
            <img src="/static/images/avatar.png"
                 style="border:2px solid black; border-radius: 20px" height="120">
    <br>
    <br>
    <h2>${user.name}</h2>
    <br>
        Номер телефона: <b>${user.phoneNumber}</b>
    </div>
    <br>
    <hr>
    <h1 style="text-align: center; width: 100%">Проекты пользователя:</a></h1>
    <br>
    <div class="card-columns">
        <#list projects as project>
            <a href="/project/${project.id}" class="project-link">
                <div class="card text-white bg-dark my-3 project">
                    <div class="card-body">
                        <h5 class="card-title">${project.title}</h5>
                        <p class="card-text">${project.statusProject}</p>
                        <p class="card-text">${project.projectType}</p>
                    </div>
                    <div class="card-footer">
                        ${project.user.name}
                    </div>
                </div>
            </a>
        <#else>
            <h2 style="text-align: center">Не найдено</h2>
        </#list>
    </div>
</@t.template>