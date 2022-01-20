<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<header id="header">
 <div class="top d-none d-lg-block">
  <div class="container">
   <ul class="top-nav">
    <!-- {foreach from=$nav_top_list item=nav} --> 
    <!-- {if $nav.child} -->
    <li class="parent"><a href="{$nav.url}">{$nav.nav_name}</a>
     <ul>
      <!-- {foreach from=$nav.child item=child} -->
      <li><a href="{$child.url}">{$child.nav_name}</a></li>
      <!-- {/foreach} -->
     </ul>
    </li>
    <li class="spacer"></li>
    <!-- {else} -->
    <li><a href="{$nav.url}"{if $nav.target} target="_blank"{/if}>{$nav.nav_name}</a></li>
    <li class="spacer"></li>
    <!-- {/if} --> 
    <!-- {/foreach} -->
    <li><a href="javascript:AddFavorite('{$site.root_url}', '{$site.site_name}')">{$lang.add_favorite}</a></li>
    <!-- {if $open.user} --> 
    <!-- {if $global_user} -->
    <li class="spacer"></li>
    <li><a href="{$url.user}">{$global_user.user_name}，{$lang.user_welcom_top}</a></li>
    <li class="spacer"></li>
    <li><a href="{$url.logout}">{$lang.user_logout}</a></li>
    <!-- {else} -->
    <li class="spacer"></li>
    <li><a href="{$url.login}">{$lang.user_login_nav}</a></li>
    <li class="spacer"></li>
    <li><a href="{$url.register}">{$lang.user_register_nav}</a></li>
    <!-- {/if} --> 
    <!-- {/if} -->
   </ul>
   <ul class="search">
    <div class="search-box">
     <form method="get" action="{$site.root_url}">
      <input name="s" type="text" class="keyword" value="{$keyword|escape}" placeholder="{$lang.search_product}" size="25">
      <input type="submit" class="btnSearch" value="{$lang.btn_submit}">
     </form>
    </div>
   </ul>
  </div>
 </div>
 <nav class="navbar navbar-expand-lg">
  <div class="container">
   <div class="navbar-brand">
    <a href="{$site.root_url}" class="logo"><img src="../images/{$site.site_logo}" alt="{$site.site_name}" /></a>
   </div>
   <div class="navbar-action d-lg-none">
    <!-- {if $open.user} -->
    <a href="{$url.user}" class="fa fa-user-circle-o"></a>
    <!-- {/if} -->
    <button type="button" class="menu" data-toggle="collapse" data-target="#main-nav" aria-controls="main-nav" aria-expanded="false" aria-label="Toggle navigation"> <span class="fa fa-bars"></span> </button>
   </div>
   <div class="main-nav collapse navbar-collapse justify-content-lg-end" id="main-nav">
    <ul class="navbar-nav">
     <li class="nav-item{if $index.cur} active{/if}"> <a class="nav-link" href="{$site.root_url}">{$lang.home}</a></li>
     <!-- {foreach from=$nav_middle_list name=nav_middle_list item=nav} -->
     <li class="nav-item{if $nav.child} dropdown{/if}{if $nav.cur} active{/if}"> <a href="{$nav.url}" class="nav-link{if $nav.child} dropdown-toggle{/if}{if $nav.cur} active{/if}" {if $nav.child} data-toggle="dropdown"{/if} aria-haspopup="true" aria-expanded="false"{if $nav.target} target="_blank"{/if}>{$nav.nav_name}</a>
      <!-- {if $nav.child} -->
      <ul class="dropdown-menu">
       <!-- {foreach from=$nav.child item=child} -->
       <li{if $child.child} class="dropdown"{/if}> <a href="{$child.url}" class="dropdown-item{if $child.child} dropdown-toggle{/if}" {if $child.child} data-toggle="dropdown"{/if}>{$child.nav_name}</a>
        <!-- {if $child.child} -->
        <ul class="dropdown-menu">
         <!-- {foreach from=$child.child item=children} -->
         <li{if $children.child} class="dropdown"{/if}><a class="dropdown-item{if $children.child} dropdown-toggle{/if}" href="{$children.url}">{$children.nav_name}</a>
          <!-- {if $children.child} -->
          <ul class="dropdown-menu">
           <!-- {foreach from=$children.child item=item} -->
           <li><a class="dropdown-item" href="{$item.url}">{$item.nav_name}</a></li>
           <!-- {/foreach} -->
          </ul>
          <!-- {/if} -->
         </li>
         <!-- {/foreach} -->
        </ul>
        <!-- {/if} -->
       </li>
       <!-- {/foreach} -->
      </ul>
      <!-- {/if} -->
     </li>
     <!-- {/foreach} -->
    </ul>
    <form class="form-inline my-2 my-lg-0 d-md-none" action="{$site.root_url}">
     <input class="form-control mr-sm-2" name="s" type="text" value="{$keyword|escape}" placeholder="{$lang.search_product}" aria-label="{$lang.search_product}">
     <button class="btn btn-outline-success my-2 my-sm-0" type="submit">{$lang.btn_submit}</button>
    </form>
   </div>
  </div>
 </nav>
</header>
