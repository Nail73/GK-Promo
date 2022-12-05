<#import "blocks/template.ftlh" as t>
<@t.template user>

    <h1 style="text-align: center">Личный кабинет</h1>
    <hr>
    <br>
    <div style="text-align: center">
        <img src="/static/images/avatar.png"
             style="border:2px solid black; border-radius: 20px" height="120">
    <br>
    <br>
        <h2>пользователя ${project.user.name}</h2>
    <br>
        Электоронная почта: <b>${user.email}</b>
    <br>
        Номер телефона: <b>${user.phoneNumber}</b>
    <br>
    <br>
        <#if user.isAdmin()>
            <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
               href="/admin">
                Панель администратора
            </a><br>
        </#if>
    <br>
        <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%"
               data-toggle="collapse" href="#collapseExample" role="button"
               aria-expanded="true" aria-controls="collapseExample">
                 Редактировать профиль
        </a>
            <div class="collapse mb-3" id="collapseExample" style="">
                <form action="/profile/update" method="post" enctype="multipart/form-data">
                   <div class="form-group">
                        <label for="projectManager">ФИО пользователя</label>
                           <input type="text" class="form-control" required id="projectManager" name="projectManager">
                    </div>
                     <div class="form-group">
                        <label for="phoneNumber">Номер телефона</label>
                           <input type="text" class="form-control" required id="phoneNumber" name="phoneNumber">
                     </div>
                      <div class="form-group">
                                       <div class="custom-file">
                                           <input type="file" name="avatar" id="avatar">
                                                 <label required class="custom-file-label" for="avatar">Автар</label>
                                       </div>
                      </div>
                              <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                              <button type="submit" style="width: 100%" class="btn btn-dark">Сохранить</button>
                </form>
            </div>
    <br>
        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
           href="/my/projects">
            Мои проекты
        </a>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" style="text-align: center; width: 100%" class="btn btn-danger mb-2">
                Выйти из аккаунта
            </button>
        </form>
    </div>
</@t.template>