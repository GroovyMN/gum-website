˙<!-- start: Row -->
<div class="row">
    <div class="span8">
        <div class="title"><h3>Sponsors</h3></div>
        <!-- start: Row -->
        <div class="row">
            <g:render template="/sponsor/index" model="${[type: "Space Sponsor", url: "http://smartthings.com", title:"SmartThings", file:"smart-things-logo-text.png"]}" />
            <g:render template="/sponsor/index" model="${[type: "Beverage Sponsor", url: "http://agileorbit.com", title:"Agile Orbit", file:"agileorbit-logo.jpg"]}" />
        </div>
        <div class="row">
            <g:render template="/sponsor/index" model="${[type: "Food Sponsor", url: "http://objectpartners.com", title:"OPI", file:"opi-logo-text.png"]}" />
            <g:render template="/sponsor/intellij" model="${[type: "Community Sponsor", title: "Intellij"]}" />

            <!-- end: Row -->
        </div>
    </div>
    <g:render template="/social/twitter" />
</div>
<!-- end: Row -->
