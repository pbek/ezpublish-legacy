{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<div class="toolbar-item {$placement}">
    <div class="toolbox">
        <div class="toolbox-design">
            <h2>{'Your country'|i18n( 'design/standard/toolbar' )}</h2>
            <div class="toolbox-content">
            <form action={'shop/setusercountry'|ezurl} method="post">
            {def $user_country=fetch( 'shop', 'user_country' )}
            {include uri='design:shop/country/edit.tpl' select_name='Country' select_size=1
                     default_val='' default_desc='Not specified'|i18n( 'design/standard/toolbar/user_country' )
                     current_val=$user_country}
            <input class="button" type="submit" name="ApplyButton" value="{'Apply'|i18n( 'design/standard/toolbar/user_country' )}" title="{'Use the selected country for VAT charging.'|i18n( 'design/standard/toolbar/user_country' )}" />
            </form>
            </div>
        </div>
    </div>
</div>
