{if $pages[0].page <> ''}<a href="{$pages[0].link}" class="b">{else}<span>{/if}Previous{if $pages[0].page <> ''}</a>{else}</span>{/if}&nbsp;&nbsp;&nbsp;Page {$pages[2]} of {$pages[3]}&nbsp;&nbsp;&nbsp;{if $pages[1].page <> ''}<a href="{$pages[1].link}" class="b">{else}<span>{/if}Next{if $pages[1].page <> ''}</a>{else}</span>{/if}