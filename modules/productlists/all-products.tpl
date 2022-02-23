{capture name=path}{l s='All products'}{/capture}

<h1 class="page-heading product-listing">{l s='All products'}</h1>
{hook h='displayNewProductsTop'}
{if $products}
  <div class="content_sortPagiBar">
    <div class="form-inline sortPagiBar clearfix">
      {include file="$tpl_dir./product-sort.tpl"}
      {include file="$tpl_dir./nbr-product-page.tpl"}
    </div>
    <div class="top-pagination-content form-inline clearfix">
      {include file="$tpl_dir./product-compare.tpl"}
      {include file="$tpl_dir./pagination.tpl" no_follow=1}
    </div>
  </div>
  
  {include file="$tpl_dir./product-list.tpl" products=$products}

  <div class="content_sortPagiBar">
    <div class="bottom-pagination-content form-inline clearfix">
      {include file="$tpl_dir./product-compare.tpl"}
      {include file="$tpl_dir./pagination.tpl" no_follow=1 paginationId='bottom'}
    </div>
  </div>
{else}
  <div class="alert alert-warning">{l s='No products.'}</div>
{/if}
{hook h='displayAllProductsBelow'}