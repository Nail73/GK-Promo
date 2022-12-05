<#macro template user>
    <!doctype html>
    <html lang="ru">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="/static/css/style.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
              crossorigin="anonymous">
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <title>Проекты</title>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ff9900;">
               <div class="container-fluid">
                  <a href="/">
                      <span class="navbar-brand mb-0 h1"> <img src="/static/images/logo.png"
                           style="border:0px solid black; border-radius: 0px" height="50"></span>
                  </a>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                       aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
                </button>
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                   <ul class="navbar-nav mr-auto">
                       <#if user??>
                           <li class="nav-item active">
                   <a class="nav-link" href="/my/projects">Мои проекты <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                    <a class="nav-link" href="/profile">Профиль</a>
                             </li>
                             <li class="nav-item">
                    <a class="nav-link" href="/swagger-ui/index.html?configUrl=/v3/api-docs/swagger-config">Swagger</a>
                             </li>
                        </#if>
                   </ul>
                </div>
                        <#if user.email??>
                <div class="dropdown text-end">
                   <p> <a href="/profile">${user.projectManager}
                             <img src="/static/images/avatar.png" alt="mdo"
                                  width="32" height="32" class="rounded-circle">
                   </a>
                   </p>
                </div>
                        <#else>
                   <button class="btn btn-light my-2 my-sm-0" type="button"
                              onclick="window.location.href = '/login'">
                          Войти
                   </button>
                         </#if>
                </div>
         </nav>
                 <div class="container mt-4">
   <#nested/>
                 </div>
         <footer class="card"
               style="background-color: ;
               position: fixed;
               right: 0;
               bottom: 0;
               text-align: right;
               width: 10%;
               font-size: 10px;>
                <div class="card">
                    <h5> <a href="https://www.gulliver-ul.ru/" class="btn btn-primary" target="_blank">Сайт Гулливера</a></h5>
                </div>
              </div>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>
   </body>
   </html>
</#macro>