[#-------------- ASSIGNMENTS --------------]
[#assign localizedLinks = cmsfn.localizedLinks()!]
[#if content.switcherType=="default"]
  [#assign switcherType = def.parameters.switcherTypeDefault!"list"]
[#else]
  [#assign switcherType = content.switcherType]
[/#if]

[#-------------- RENDERING --------------]
[#if localizedLinks?has_content]
    [#assign languages = localizedLinks?keys]
    <span class="languageSwitcher">

        [#if switcherType=="select"]

        <select onchange="window.location = this.value;">
          [#list languages as lang]
              [#assign current = cmsfn.isCurrentLocale(lang)]
              <option [#if current]selected[/#if] value="${localizedLinks[lang]!'#'}">${lang?upper_case!}</option>
          [/#list]
        </select>

        [#else]

        <ul>
          [#-- Uses "compress" to put "li" and "a" on one line to prevent white spaces from interfering with layout. --]
          [#list languages as lang]
              [#assign current = cmsfn.isCurrentLocale(lang)]
              <li[#if current] class="active"[/#if]>[@compress single_line=true]
                  [#if !current]<a href="${localizedLinks[lang]!'#'}" title="lang!}">[#else]<span>[/#if]${lang?upper_case!}[#if !current]</a>[#else]</span>[/#if]
              [/@compress]</li>
          [/#list]
        </ul>

        [/#if]
    </span>
[/#if]
