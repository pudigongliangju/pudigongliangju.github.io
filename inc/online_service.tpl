<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- {if $site.qq || $fragment.weixin.image} -->
<div class="online-service">
 <!-- {if $site.qq} -->
 <div class="item">
  <i class="item-icon qq"></i>
  <div class="pop-box">
   <div class="item-box">
     <div class="qq-box">
     <!-- {foreach from=$site.qq item=qq} -->
     <a class="qq" href="http://wpa.qq.com/msgrd?v=3&uin={$qq.number}&site=qq&menu=yes" target="_blank"><i class="qq-icon"></i><!-- {if $qq.nickname} -->{$qq.nickname}<!-- {else} -->{$lang.online_qq}<!-- {/if} --></a>
     <!-- {/foreach} -->
    </div>
   </div>
  </div>
 </div>
 <!-- {/if} -->
 <!-- {if $fragment.weixin.image} -->
 <div class="item">
  <i class="item-icon weixin"></i>
  <div class="pop-box">
   <div class="item-box">
    <div class="weixin-box"><img src="{$fragment.weixin.image}" /><p>{$fragment.weixin.name}</p></div>
   </div>
  </div>
 </div>
 <!-- {/if} -->
 <div class="item">
  <i class="item-icon tel"></i>
  <div class="pop-box">
   <div class="item-box">
    <div class="tel-box">{$site.tel}</div>
   </div>
  </div>
 </div>
 <p class="go-top"><a href="javascript:;" onfocus="this.blur();" class="go-btn"></a></p>
</div>
<!-- {/if} -->