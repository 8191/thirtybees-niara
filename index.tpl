{if !empty($HOOK_HOME_TAB)}
  <ul id="home-page-tabs" class="nav nav-tabs">
    {$HOOK_HOME_TAB}
  </ul>
{/if}

{if !empty($HOOK_HOME_TAB_CONTENT)}
  <div class="tab-content" id="index-tab-content">
    <div class="container">
      {$HOOK_HOME_TAB_CONTENT}
    </div>
  </div>
{/if}

{if !empty($HOOK_HOME)}
  <div class="container">
    <div class="row">
      {$HOOK_HOME}
    </div>
  </div>
{/if}
