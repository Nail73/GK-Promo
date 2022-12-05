<#import "blocks/template.ftlh" as t>
<@t.template user>

    <h1 style="text-align: center">Мои проекты</h1>
    <hr>
    <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%"
       data-toggle="collapse" href="#collapseExample" role="button"
       aria-expanded="true" aria-controls="collapseExample">
         Создать новый проект
    </a>
    <div class="collapse mb-3" id="collapseExample" style="">
        <form action="/project/create" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="projectName">Название проекта</label>
                    <input type="text" required class="form-control"
                       id="projectName" name="title">
            </div>
            <div class="form-group">
                <label for="searchType">Тип проекта</label>
                    <select id="searchType" required name="projectType" class="form-control">
                        <option value="Финансовый">Финансовый</option>
                        <option value="Качественный">Качественный</option>
                    </select>
            </div>
            <div class="form-group">
                <label for="searchStatus">Статус проекта</label>
                     <select id="searchStatus" required name="statusProject" class="form-control">
                          <option value="Активный">Активный</option>
                           <option value="Архивный">Архивный</option>
                           <option value="Приостановленный">Приостановленный</option>
                     </select>
             </div>
             <div class="form-group">
                 <label for="description">Описание проекта</label>
                      <textarea required class="form-control" id="description" name="description"></textarea>
             </div>
             <div class="form-group">
                  <div class="custom-file">
                      <input type="file" name="file1" id="file1">
                            <label required class="custom-file-label" for="file1">Фотография к проекту</label>
                  </div>
             </div>
                       <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                       <button type="submit" style="width: 100%" class="btn btn-dark">Добавить</button>
        </form>
    </div>
    <div class="card-columns">
        <#list projects as project>
            <a href="/project/${project.id}" class="project-link">
                <div class="card text-white bg-secondary mb-3 project">
                    <div class="card-top">
                        <form action="/project/delete/${project.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-danger btn-sm m-1">
                                Удалить
                            </button>
                        </form>
                        <form action="/project/${project.id}" method="post">
                              <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                              <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
                                  href="/project/${project.id}">Подробнее</a>
                        </form>
                    </div>
    <div class="card-body">
        <p class="card-text">${project.statusProject}</p>
        <p class="card-text">${project.projectType}</p>
    </div>
    <div class="card-footer">
        <h4 class="card-title">Проект: ${project.title}</h4>
    </div>
    </div>
             </a>
             <#else>
             <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>
</@t.template>