<#import "blocks/template.ftlh" as t>
<@t.template user>

    <h1 style="text-align: center">Регистрация</h1>
    <hr>
    <form action="/registration" method="post">
        <div class="form-group">
            <label for="projectManager">ФИО пользователя</label>
            <input type="text" class="form-control" required id="projectManager" name="projectManager">
        </div>
        <div class="form-group">
            <label for="email">Электронная почта</label>
            <input type="email" class="form-control" id="email" required name="email">
        </div>
        <div class="form-group">
            <label for="phoneNumber">Номер телефона</label>
            <input type="number" class="form-control" id="phoneNumber" required name="phoneNumber">
        </div>
        <div class="form-group">
            <label for="password">Пароль</label>
            <input type="password" class="form-control" id="password" required name="password">
        </div>
        <div class="col-sm-6">
            <div class="g-recaptcha" data-sitekey="6LeaJEMjAAAAAKVgUe2NuSghKIYofGRLIISM-o0w"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <br>
        <button type="submit" style="width: 100%" class="btn btn-dark">Зарегистрироваться</button>
    </form>
         <#if errorMessage??>
         <h2 style="color: red">${errorMessage?ifExists}</h2>
         </#if>
</@t.template>