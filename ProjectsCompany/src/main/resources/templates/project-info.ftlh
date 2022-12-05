<#import "blocks/template.ftlh" as t>
<@t.template user>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <#list images as image>
                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
            </#list>
        </ol>
        <div class="carousel-inner">
            <#list images as image>
                <div class="carousel-item <#if image.previewImage>active</#if>">
                    <svg class="bd-placeholder-img" width="0%" height="0%" xmlns="http://www.w3.org/2000/svg"
                         role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title></title>
                        <rect width="100%" height="100%" fill="#777"></rect>
                        <text x="50%" y="50%" fill="#777" dy=".3em"></text>
                    </svg>
                    <div class="container">
                        <div class="carousel-caption">
                            <a href="/images/${image.id}">
                                <img class="project" style="height: 100px" src="/images/${image.id}">
                            </a>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
    <hr>
    <p><h1 style="text-align: center">${project.title} | ${project.statusProject}</h1></p>
    <p style="text-align: center">${project.projectType}</p>
    <p style="text-align: center">${project.description}</p>
    <p style="text-align: center">Номер телефона руководителя проекта: <b>${authorProject.phoneNumber}</b></p>
    <br>
     <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%"
                  data-toggle="collapse" href="#collapseExample" role="button"
                  aria-expanded="true" aria-controls="collapseExample">
                    Редактировать проект
     </a>
        <div class="collapse mb-3" id="collapseExample" style="">
           <form action="#" method="post" enctype="multipart/form-data">
              <div class="form-group">
                   <label for="projectName">Название проекта</label>
                   <input type="text" required class="form-control"
                                             id="projectName" name="title">
              </div>
              <div class="form-group">
                   <label for="description">Описание проекта</label>
                   <textarea required class="form-control" id="description" name="description"></textarea>
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
                      <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                      <button type="submit" style="width: 100%" class="btn btn-dark">Сохранить</button>
           </form>
        </div>
    <br>
    <hr>
    <p style="text-align: center">
        <a href="/googlesheets/ping">
            <button type="button" class="btn btn-success btn-lg">Карточка  проекта</button>
        </a>
    </p>
    <p style="text-align: center">
        <a href="https://docs.google.com/spreadsheets/d/1Zc1AZst6jfMEMqOqSQsFhK-IVwVrTl6j_6zNx-BladI/edit?usp=sharing" target="_blank">
            <span class="badge text-bg-success">таблица</span>
        </a>
    </p>
    <br><br>
    <div class="btn-group" role="group" aria-label="Базовая группа переключателей">
      <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
      <label class="btn btn-outline-dark" for="btnradio1" <a href="#">Предпроектная работа</label>

      <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
      <label class="btn btn-outline-dark" for="btnradio2" <a href="#">Опросы пользователей</label>

      <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
      <label class="btn btn-outline-dark" for="btnradio3" <a href="#">Договорные документы</label>

      <input type="radio" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off" checked>
      <label class="btn btn-outline-dark" for="btnradio4" <a href="#">Рабочие файлы по проекту</label>

      <input type="radio" class="btn-check" name="btnradio" id="btnradio5" autocomplete="off">
      <label class="btn btn-outline-dark" for="btnradio5" <a href="#">Дополнительная информация</label>

      <input type="radio" class="btn-check" name="btnradio" id="btnradio6" autocomplete="off">
      <label class="btn btn-outline-dark" for="btnradio63" <a href="#">ТЗ и техническая информация</label>

      <input type="radio" class="btn-check" name="btnradio" id="btnradio7" autocomplete="off">
      <label class="btn btn-outline-dark" for="btnradio7" <a href="#">ОРД и презентации по проекту</label>
    </div>
</@t.template>