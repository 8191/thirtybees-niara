{if $MENU != ''}
    <nav>
        <div id="block_top_menu" class="sf-contener clearfix">
            <div class="cat-title">
                <a href="{$link->getPageLink('index', true)|escape:'html':'UTF-8'}"
                   title="{$shop_name|escape:'html':'UTF-8'}">
                    <img src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"
                         title="{$shop_name|escape:'html':'UTF-8'}"{if isset($logo_image_width) && $logo_image_width} width="{$logo_image_width}"{/if}{if isset($logo_image_height) && $logo_image_height} height="{$logo_image_height}"{/if}>
                </a>
            </div>
            <ul class="sf-menu clearfix menu-content">
                {$MENU}
                {if $MENU_SEARCH}
                    <li class="sf-search noBack" style="float:right">
                        <form id="searchbox" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" method="get">
                            <p>
                                <input type="hidden" name="controller" value="search">
                                <input type="hidden" value="position" name="orderby">
                                <input type="hidden" value="desc" name="orderway">
                                <input type="text" name="search_query"
                                       value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|escape:'html':'UTF-8'}{/if}">
                            </p>
                        </form>
                    </li>
                {/if}
            </ul>
        </div>
    </nav>
{/if}
