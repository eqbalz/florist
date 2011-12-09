

<%@ page import="org.floristonline.Payment" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'payment.label', default: 'Payment')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${paymentInstance}">
            <div class="errors">
                <g:renderErrors bean="${paymentInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${paymentInstance?.id}" />
                <g:hiddenField name="version" value="${paymentInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invoice"><g:message code="payment.invoice.label" default="Invoice" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: paymentInstance, field: 'invoice', 'errors')}">
                                    <g:select name="invoice" from="${org.floristonline.Invoice.list()}" 
                                    multiple="yes" optionKey="id" size="5" 
                                    optionValue="${{it.id}}"
                                    value="${paymentInstance?.invoice*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="amount"><g:message code="payment.amount.label" default="Amount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: paymentInstance, field: 'amount', 'errors')}">
                                    <g:textField name="amount" value="${fieldValue(bean: paymentInstance, field: 'amount')}" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="effectiveDate"><g:message code="payment.effectiveDate.label" default="Effective Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: paymentInstance, field: 'effectiveDate', 'errors')}">
                                    <g:datePicker name="effectiveDate" precision="day" value="${paymentInstance?.effectiveDate}"  />
                                </td>
                            </tr>
                        
                            
                        
                            
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paymentMethodType"><g:message code="payment.paymentMethodType.label" default="Payment Method Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: paymentInstance, field: 'paymentMethodType', 'errors')}">
                                    <g:select name="paymentMethodType.id" from="${org.floristonline.PaymentMethodType.list()}" 
                                    optionKey="id" 
                                    optionValue="${{it.description}}"
                                    value="${paymentInstance?.paymentMethodType?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paymentRefNum"><g:message code="payment.paymentRefNum.label" default="Payment Ref Num" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: paymentInstance, field: 'paymentRefNum', 'errors')}">
                                    <g:textField name="paymentRefNum" value="${fieldValue(bean: paymentInstance, field: 'paymentRefNum')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="payorParty"><g:message code="payment.payorParty.label" default="Payor Party" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: paymentInstance, field: 'payorParty', 'errors')}">
                                    <g:select name="payorParty.id" from="${org.floristonline.Party.list()}" optionKey="id" 
                                    optionValue="${{it.firstName + ' ' + it.lastName}}"
                                    value="${paymentInstance?.payorParty?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="receiverParty"><g:message code="payment.receiverParty.label" default="Receiver Party" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: paymentInstance, field: 'receiverParty', 'errors')}">
                                    <g:select name="receiverParty.id" from="${org.floristonline.Party.list()}" optionKey="id" 
                                    optionValue="${{it.firstName + ' ' + it.lastName}}"
                                    value="${paymentInstance?.receiverParty?.id}"  />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comment"><g:message code="payment.comment.label" default="Comment" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: paymentInstance, field: 'comment', 'errors')}">
                                    <g:textField name="comment" value="${paymentInstance?.comment}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>