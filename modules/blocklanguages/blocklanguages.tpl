{if !empty($languages)}

  {foreach from=$languages key=k item=language name="languages"}
    {if $language.iso_code == $lang_iso}
      {$current_iso = $language.name|regex_replace:"/\s\(.*\)$/":""}
      {break}
    {/if}
  {/foreach}

  <li id="blocklanguages" class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      <img src="{$img_lang_dir}{$language.id_lang}.jpg" alt="{$language.iso_code|escape:'html':'UTF-8'}" width="16" height="11" /> <span class="caret"></span>
    </a>
    <ul class="dropdown-menu dropdown-menu-right">
      {foreach from=$languages key=k item=language name="languages"}
        <li{if $language.iso_code == $lang_iso} class="active"{/if}>

          {assign var=indice_lang value=$language.id_lang}

          {if isset($lang_rewrite_urls.$indice_lang)}
            <a href="{$lang_rewrite_urls.$indice_lang|escape:'html':'UTF-8'}" title="{$language.name|escape:'html':'UTF-8'}" rel="alternate" hreflang="{$language.iso_code|escape:'html':'UTF-8'}">
              <span><img src="{$img_lang_dir}{$language.id_lang}.jpg" alt="{$language.iso_code|escape:'html':'UTF-8'}" width="16" height="11" /> {$language.name|regex_replace:"/\s\(.*\)$/":""}</span>
            </a>
          {else}
            <a href="{$link->getLanguageLink($language.id_lang)|escape:'html':'UTF-8'}" title="{$language.name|escape:'html':'UTF-8'}" rel="alternate" hreflang="{$language.iso_code|escape:'html':'UTF-8'}">
              <span><img src="{$img_lang_dir}{$language.id_lang}.jpg" alt="{$language.iso_code|escape:'html':'UTF-8'}" width="16" height="11" /> {$language.name|regex_replace:"/\s\(.*\)$/":""}</span>
            </a>
          {/if}

        </li>
      {/foreach}
    </ul>
  </li>

{/if}
