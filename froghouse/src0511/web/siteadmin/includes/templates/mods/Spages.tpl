{*<meta http-equiv="Content-Type" content="text/HTML; charset=windows-1251" />*}

<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td colspan="2" height="3"><img height="3" border="0"></td>
    </tr>

    <tr>
        {*<!--Central part-->*}
        <td colspan="2" height="450" align="left" valign="top">
            <br />

            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td valign="top">
                    <h2>{#spage#}</h2>
                    <a href="{$curScriptName}">{#spage#}</a>
                    {section name=i loop=$bc}
                         > <a href="{$bc[i].link}">{$bc[i].name}</a>
                    {/section}
                    <br />
                    <br />
                    <br />
                   {if $action == "change"}
   
                   <b>{#action#}: {if $id == 0 || $id == ''}{#add#}{else}{#edit#}{/if} {#spageo#}</b>

                   {if $fdata.javascript}
                       {$fdata.javascript}
                   {/if}

                      <form {$fdata.attributes}>
                      {if $fdata.errors}
                        {foreach from=$fdata.errors item=err}
                           <p style="color:red">{$err}</p>
                        {/foreach}
                      {/if}
                       <table>
                       {section name=i loop=$fdata.elements}
                      {if $fdata.elements[i].type=='text' || $fdata.elements[i].type=='textarea' || $fdata.elements[i].type=='static'
                                           || $fdata.elements[i].type=='file' || $fdata.elements[i].type=='select'}
                       <tr>
                           <td><b>{$fdata.elements[i].label}</b></td>
                       </tr>
                       <tr>
                           <td>{$fdata.elements[i].html}</td>
                       </tr>
                      {elseif $fdata.elements[i].type=='hidden'}
                         {$fdata.elements[i].html}
                      {/if}
                      {/section}
                      </table>

                     <table width="200" border="0" cellpadding="0" cellspacing="0">
                     <tr valign="top">
                         <td><A href="#" onClick="document.eform.submit();return false;"><IMG src="includes/templates/images/b_submit.gif" border="0" alt="{#submit#}" width="100" height="18" /></A>&nbsp;&nbsp;</td>
                         <td><a href="{$curScriptName}?ctg={$ctg}"><img src="includes/templates/images/b_cancel.gif" border="0" alt="{#cancel#}"></a></td>
                     </tr>
                     </table>
                     </form>
					 {elseif $action == "edit"}

                      <b>{#action#}: {if $cid == 0 || $cid == ''}{#add#}{else}{#edit#}{/if} {#category#}</b>

                      {if $fdata.javascript}
                          {$fdata.javascript}
                      {/if}

                      <form {$fdata.attributes}>
                      {if $fdata.errors}
                         {foreach from=$fdata.errors item=err}
                         <p style="color:red">{$err}</p>
                         {/foreach}
                      {/if}
                      <table>
                      {section name=i loop=$fdata.elements}
                          {if $fdata.elements[i].type=='text' || $fdata.elements[i].type=='textarea' || $fdata.elements[i].type=='static'
                                           || $fdata.elements[i].type=='file' || $fdata.elements[i].type=='select'}
                          <tr>
                              <td><b>{$fdata.elements[i].label}</b></td>
                          </tr>
                          <tr>
                              <td>{$fdata.elements[i].html}</td>
                          </tr>
                          {elseif $fdata.elements[i].type=='hidden'}
                             {$fdata.elements[i].html}
                          {/if}
                      {/section}
                      </table>

                      <table width="200" border="0" cellpadding="0" cellspacing="0">
                          <tr valign="top">
                            <td><A href="#" onClick="document.eform.submit();return false;"><IMG src="includes/templates/images/b_submit.gif" border="0" alt="{#submit#}" width="100" height="18" /></A>&nbsp;&nbsp;</td>
                            <td><a href="{$curScriptName}?ctg={$ctg}"><img src="includes/templates/images/b_cancel.gif" border="0" alt="{#cancel#}"></a></td>
                          </tr>
                      </table>
                      </form>
					  
                    {else}

                    {*<!--list output-->*}
                    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
					
                    {*<!--Category list-->*}
                    {section name=i loop=$category}
                    <tr>
                        <td width="15">{$category[i].sortid}&nbsp;</td>
                        <td>
                            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="26"><img src="includes/templates/images/folder.gif" border="0"></td>
                                    <td><a href="{$curScriptName}?ctg={$category[i].cid}">{$category[i].name}</a></td>
                                </tr>
                            </table>
                        </td>
                        <td>
                       {if $category[i].active==0}
                           <a href="{$curScriptName}?ctg={$ctg}&action=cactive&cid={$category[i].cid}"><img src="includes/templates/images/status_green_l.gif " border="0" alt="{#mactive#}"></a>
                           &nbsp;<img src="includes/templates/images/status_red.gif" alt="{#nactive#}">
                       {else}
                           <img src="includes/templates/images/status_green.gif " border="0" alt="{#active#}">&nbsp;
                           <a href="{$curScriptName}?ctg={$ctg}&action=cactive&cid={$category[i].cid}"><img src="includes/templates/images/status_red_l.gif" border="0" alt="{#mnactive#}"></a>
                       {/if}
                       </td>

                       <td width="35"><a href="{$curScriptName}?ctg={$category[i].cid}"><IMG src="includes/templates/images/b_browse.png" border="0" width="16" height="16" title="{#enter#}" /></a></td>
                       <td width="35"><a href="{$curScriptName}?ctg={$ctg}&action=edit&cid={$category[i].cid}"><IMG src="includes/templates/images/b_edit.png" border="0" width="16" height="16" title="{#edit#}" /></a></td>
                       <td width="35"><a href="{$curScriptName}?ctg={$ctg}&action=delcat&cid={$category[i].cid}"><IMG src="includes/templates/images/b_drop.png" border="0" width="16" height="16" title="{#delete#}" /></a></td>
                    </tr>
					<tr>
				        <td colspan="6" height="1px" bgcolor="#CCCCCC"></td>
				    </tr>	
                    {/section}
					
                    {*<!--pages list-->*}
                    {section name=i loop=$list}
                    <tr>
                        <td width="15">{$list[i].sortid}&nbsp;</td>
                        <td>
                            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="26"><img src="includes/templates/images/preview.gif" border="0"></td>
                                    <td><a href="{$curScriptName}?action=change&id={$list[i].id}&ctg={$ctg}">{$list[i].name} [{$list[i].pagename}]</a></td>
                                </tr>
                            </table>
                        </td>
                        <td>
                       {if $list[i].active==0}
                           <a href="{$curScriptName}?action=active&id={$list[i].id}&ctg={$ctg}"><img src="includes/templates/images/status_green_l.gif " border="0" alt="{#mactive#}"></a>
                           &nbsp;<img src="includes/templates/images/status_red.gif" alt="{#nactive#}">
                       {else}
                           <img src="includes/templates/images/status_green.gif " border="0" alt="{#active#}">&nbsp;
                           <a href="{$curScriptName}?action=active&id={$list[i].id}&ctg={$ctg}"><img src="includes/templates/images/status_red_l.gif" border="0" alt="{#mnactive#}"></a>
                       {/if}
                       </td>
                       <td width="35"><a href="{$curScriptName}?action=change&id={$list[i].id}&ctg={$ctg}"><IMG src="includes/templates/images/b_edit.png" border="0" width="16" height="16" title="{#edit#}" /></a></td>
                       <td width="35"><a href="{$curScriptName}?action=delpage&id={$list[i].id}&ctg={$ctg}"><IMG src="includes/templates/images/b_drop.png" border="0" width="16" height="16" title="{#delete#}" /></a></td>
                    </tr>
					<tr>
				        <td colspan="6" height="1px" bgcolor="#CCCCCC"></td>
				    </tr>	
                    {/section}
                   </table>
				      {if $cinf.parent <> ''}
                      <br /> <br />
				      <a href="{$curScriptName}?ctg={$cinf.parent}"><img src="includes/templates/images/b_up.gif" border="0" /></a>
				      {/if}     
				  {/if}

        </td>
        {*<!--End Central part-->*}

        <td width="4"><img width="4" height="0"></td>

        {*<!--Right part-->*}
        <td width="250" valign="top">

            {if $action=="delpage"}
                <br /><br />
                                <b>{#delpage#}</b> "{$inf.name}" ?
                <br /><br />
                <a href="{$curScriptName}?id={$inf.id}&action=delpage&do=1&ctg={$ctg}"><img src="includes/templates/images/b_submit.gif" alt="{#submit#}" border="0"></a>
                                <img width="10" height="0" border="0">
                                <a href="{$curScriptName}?ctg={$ctg}"><img src="includes/templates/images/b_cancel.gif" border="0" alt="{#cancel#}"></a>
            
			 {/if}
             
            
			{if $action=="delcat"}
                <br /><br />
                               <b>{#delcat#}</b> "{$inf.name}" {#delwith#}?
                <br /><br />
                <a href="{$curScriptName}?ctg={$ctg}&cid={$inf.cid}&action=delcat&do=1"><img src="includes/templates/images/b_submit.gif" alt="{#submit#}" border="0"></a>
                                <img width="10" height="0" border="0">
                                <a href="{$curScriptName}?ctg={$ctg}"><img src="includes/templates/images/b_cancel.gif" border="0" alt="{#cancel#}"></a>
			{/if}
			
			{if $action == ''}
            <a href= "{$curScriptName}?action=change&ctg={$ctg}"><img src="includes/templates/images/b_addpage.gif" border="0" /></a>
			<br /><br />
			    {if $ctg == 0 && $enable_cat}
			     <a href= "{$curScriptName}?action=edit&ctg={$ctg}"><img src="includes/templates/images/b_addcat.gif" border="0" /></a>
			    {/if}
			{/if}
        </td>
    </tr>
</table>