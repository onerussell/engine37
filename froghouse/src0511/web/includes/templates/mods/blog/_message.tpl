    <div class="maincontainer">
        {if $is_user != 1 && $UserInfo}
            {include file="mods/people/_left_menu.tpl"}
        {else}
            {include file="mods/blog/_left_menu.tpl"}
        {/if}

        <div class="rightpart">

            <div class="title-block"><div>{$dtext}</div></div>
            <div class="block">
                 <div class="pad">
                      <div class="link link-left"><a href="{$back_link}">{$btext}</a></div>
                </div>
            </div>
        </div>
        <div class="spacer"><!-- --></div>
    </div>