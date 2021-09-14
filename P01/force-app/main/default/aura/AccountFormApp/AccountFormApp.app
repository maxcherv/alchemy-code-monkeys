<aura:application extends="force:slds">
    <aura:attribute name="success" type="boolean" default="false"/>
    <aura:handler name="SubmitSuccess" event="c:SubmitSuccess" action="{!handleSuccess}"/>
    
    <c:AccountForm/>
 
</aura:application>