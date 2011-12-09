
<%@ page import="org.floristonline.Payment" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'payment.label', default: 'Payment')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="payment.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: paymentInstance, field: "id")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="payment.invoice.label" default="Invoice" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${paymentInstance.invoice}" var="i">
                                    <li><g:link controller="invoice" action="show" id="${i.id}">${i?.id}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="payment.amount.label" default="Amount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: paymentInstance, field: "amount")}</td>
                            
                        </tr>
                    
                        
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="payment.effectiveDate.label" default="Effective Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate format="yyyy-MM-dd" date="${paymentInstance?.effectiveDate}" /></td>
                            
                        </tr>
                    
                        
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="payment.paymentMethodType.label" default="Payment Method Type" /></td>
                            
                            <td valign="top" class="value"><g:link controller="paymentMethodType" action="show" id="${paymentInstance?.paymentMethodType?.id}">${paymentInstance?.paymentMethodType?.description}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="payment.paymentRefNum.label" default="Payment Ref Num" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: paymentInstance, field: "paymentRefNum")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="payment.payorParty.label" default="Payor Party" /></td>
                            
                            <td valign="top" class="value"><g:link controller="party" action="show" id="${paymentInstance?.payorParty?.id}">${paymentInstance?.payorParty?.firstName} ${paymentInstance?.payorParty?.lastName}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="payment.receiverParty.label" default="Receiver Party" /></td>
                            
                            <td valign="top" class="value"><g:link controller="party" action="show" id="${paymentInstance?.receiverParty?.id}">${paymentInstance?.receiverParty?.firstName} ${paymentInstance?.receiverParty?.lastName}</g:link></td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="payment.comment.label" default="Comment" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: paymentInstance, field: "comment")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${paymentInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>