
{include file="$tpl_dir./errors.tpl"}

{if !empty($category) && $category->id}
    {if !$category->active}
        <div class="alert alert-warning">{l s='This category is currently unavailable.'}</div>
    {else}
        <main>
        {* {include file="./category-header.tpl"} *}
        {if !empty($subcategories)
            && ((isset($display_subcategories) && $display_subcategories) || ! isset($display_subcategories))}
            <section id="category-subcategories">
                <h2 class="page-heading">{$category->name|escape:'html':'UTF-8'} {l s='Subcategories'}</h2>
                <ul class="list-grid row">
                    {foreach from=$subcategories item=subcategory}
                        <li class="col-xs-6 col-sm-4 col-md-3">
                            <div class="thumbnail">
                                {if $subcategory.id_image}
                                    <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}"
                                       title="{$subcategory.name|escape:'html':'UTF-8'}">
                                        <img class="replace-2x img-responsive"
                                             src="{Link::getGenericImageLink(
                                                 'categories',
                                                 $subcategory.id_image,
                                                 'medium',
                                                 (ImageManager::retinaSupport()) ? '2x' : ''
                                             )|escape:'htmlall':'UTF-8'}"
                                             alt="{$subcategory.name|escape:'html':'UTF-8'}"
                                             title="{$subcategory.name|escape:'html':'UTF-8'}"
                                             width="{getWidthSize|intval type='medium'}"
                                             height="{getHeightSize|intval type='medium'}"
                                        >
                                    </a>
                                {/if}
                                <div class="caption">
                                    <h3 class="subcategory-title text-center">
                                        <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}">{$subcategory.name|escape:'html':'UTF-8'}</a>
                                    </h3>
                                </div>
                            </div>
                        </li>
                    {/foreach}
                </ul>
            </section>
        {/if}

        {if !empty($products)}
            <section id="category-products">
                <h2 class="page-heading">
                    {l s='Products'}

                    <div class="pull-right">
                        {include file="$tpl_dir./category-count.tpl"}
                    </div>
                </h2>
                <div class="content_sortPagiBar clearfix">
                    <div class="form-inline sortPagiBar clearfix">
                        {include file="./product-sort.tpl"}
                        {include file="./nbr-product-page.tpl"}
                    </div>
                    <div class="top-pagination-content form-inline clearfix">
                        {include file="./product-compare.tpl"}
                        {include file="$tpl_dir./pagination.tpl"}
                    </div>
                </div>
                {include file="./product-list.tpl" products=$products}

                <div class="content_sortPagiBar">
                    <div class="bottom-pagination-content form-inline clearfix">
                        {include file="./product-compare.tpl" paginationId='bottom'}
                        {include file="./pagination.tpl" paginationId='bottom'}
                    </div>
                </div>
            </section>
        {/if}

    {/if}
    </main>
{/if}
