<section id="category-info">
    {if $category->id_image}
        <div id="category-banner">
          {if !empty($lazy_load)}
            <noscript>
              <img src="{Link::getGenericImageLink(
                       'categories',
                       $category->id_image,
                       'category',
                       (ImageManager::retinaSupport()) ? '2x' : ''
                   )|escape:'htmlall':'UTF-8'}"
                   alt="{$category->name|escape:'html':'UTF-8'}"
                   title="{$category->name|escape:'html':'UTF-8'}"
                   width="{getWidthSize|intval type='category'}"
                   height="{getHeightSize|intval type='category'}"
                   class="img-responsive"
              >
            </noscript>
          {/if}
          
          <h1 class="page-heading{if (isset($subcategories) && !$products) || (isset($subcategories) && $products) || !isset($subcategories) && $products} product-listing{/if}">
              <span class="cat-name">
                  {$category->name|escape:'html':'UTF-8'}
                  {if isset($categoryNameComplement)}
                      &nbsp;{$categoryNameComplement|escape:'html':'UTF-8'}
                  {/if}
              </span>
          </h1>
            
          <picture class="img-responsive{if !empty($lazy_load)} tb-lazy-image{/if}">
            <!--[if IE 9]><video style="display: none;"><![endif]-->
            {if !empty($webp)}
              <source {if !empty($lazy_load)}srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII= 1w"
                      data-{/if}srcset="{Link::getGenericImageLink(
                          'categories',
                          $category->id_image,
                          'category',
                          (ImageManager::retinaSupport()) ? '2x' : ''
                      )|escape:'htmlall':'UTF-8'}"
                      title="{$category->name|escape:'html':'UTF-8'}"
                      type="image/webp"
              >
            {/if}
            <!--[if IE 9]></video><![endif]-->
            <img {if !empty($lazy_load)}srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII= 1w"
                 data-{/if}srcset="{Link::getGenericImageLink(
                     'categories',
                     $category->id_image,
                     'category',
                     (ImageManager::retinaSupport()) ? '2x' : ''
                 )|escape:'htmlall':'UTF-8'}"
                 {if !empty($lazy_load)}src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="{/if}
                 alt="{$category->name|escape:'html':'UTF-8'}"
                 title="{$category->name|escape:'html':'UTF-8'}"
                 width="{getWidthSize|intval type='category'}"
                 height="{getHeightSize|intval type='category'}"
                 class="img-responsive"
            >
          </picture>
        </div>
    {/if}

    {if !empty($category->description)}
        <div id="category-description" class="rte">{$category->description}</div>
    {/if}
</section>