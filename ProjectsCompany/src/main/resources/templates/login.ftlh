<#import "blocks/template.ftlh" as t>
<@t.template user>

    <h1 style="text-align: center">Авторизация</h1>
    <hr>
        <#if errorMessage??>
    <h2 style="color: red">${message?ifExists}</h2>
        </#if>
        <#if message??>
    <div class="alert alert-${messageType}" role="alert">
         ${message}
    </div>
         </#if>
    <form action="/login" method="post">
        <div class="form-group">
            <label for="email">Электронная почта</label>
            <input type="email" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="email" name="email">
            <div id="email" class="invalid-feedback">
                Неверная электронная почта, либо вы не активировали аккаунт через почту, проверьте почту и перейдите по ссылке для активации
            </div>
        </div>
        <div class="form-group">
            <label for="password">Пароль</label>
            <input type="password" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="password" name="password">
            <div id="password" class="invalid-feedback">
                Неверный пароль, либо вы не активировали аккаунт через почту, проверьте почту и перейдите по ссылке для активации
            </div>
        </div>
               <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 100%" class="btn btn-dark">Войти</button>
    </form>
        <hr>
        <h2 style="text-align: center"> <a href="/registration">Регистрация</a></h2>
           <input type="hidden" name="_csrf" value="${_csrf.token}">
</@t.template>