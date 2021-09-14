<aura:application extends="force:slds">
    <aura:attribute name="success" type="boolean" default="false"/>
    <aura:handler name="SubmitSuccess" event="c:SubmitSuccess" action="{!handleSuccess}"/>
    <c:AccountForm/>
    <!--
    <aura:if isTrue="{!v.success}">
    	<p>
            Account has successfully been inserted.
    	</p>
	</aura:if>
	-->
</aura:application>