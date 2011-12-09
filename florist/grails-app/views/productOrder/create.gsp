

<%@ page import="org.floristonline.ProductOrder" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'productOrder.label', default: 'ProductOrder')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="nav">
            
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        	
        </div>
    <div class="nav" align="center">
            
            <span class="menuButton"><g:link controller="party">Party</g:link></span>
            <span class="menuButton"><g:link controller="contactMechanism">Contact Mechanism</g:link></span>
            <span class="menuButton"><g:link controller="product">Product</g:link></span>
            <span class="menuButton"><g:link controller="productFeature">Product Feature</g:link></span>
            <span class="menuButton"><g:link controller="orderItem">Order Item</g:link></span>
            <span class="menuButton"><g:link controller="estimatedProductCost">Estimated  Cost</g:link></span>
            <span class="menuButton"><g:link controller="priceComponent">Price Component</g:link></span>
            <span class="menuButton"><g:link controller="shipment">Shipment</g:link></span>
            <span class="menuButton"><g:link controller="invoice">Invoice</g:link></span>
            
            
        </div>
        <div>
        &nbsp;
        </div>
        <div class="nav">
            
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${productOrderInstance}">
            <div class="errors">
                <g:renderErrors bean="${productOrderInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                        <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="orderItem"><g:message code="productOrder.orderItem.label" default="Order Item" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productOrderInstance, field: 'orderItem', 'errors')}">
                                    <g:select name="orderItem" 
                                    from="${org.floristonline.OrderItem.list()}" 
                                    multiple="yes" optionKey="id" size="5" 
                                    optionValue="${{it.product.name}}"
                                    value="${productOrderInstance?.orderItem*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="entryDate"><g:message code="productOrder.entryDate.label" default="Entry Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productOrderInstance, field: 'entryDate', 'errors')}">
                                    <g:datePicker name="entryDate" precision="day" value="${productOrderInstance?.entryDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="orderDate"><g:message code="productOrder.orderDate.label" default="Order Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productOrderInstance, field: 'orderDate', 'errors')}">
                                    <g:datePicker name="orderDate" precision="day" value="${productOrderInstance?.orderDate}"  />
                                </td>
                            </tr>
                        
                            
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="orderType"><g:message code="productOrder.orderType.label" default="Order Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productOrderInstance, field: 'orderType', 'errors')}">
                                    <g:textField name="orderType" value="${productOrderInstance?.orderType}" />
                                </td>
                            </tr>
                        
                            
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="orderEnteredBy"><g:message code="productOrder.orderEnteredBy.label" default="Order Entered By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productOrderInstance, field: 'orderEnteredBy', 'errors')}">
                                    <g:select name="orderEnteredBy.id" from="${org.floristonline.Party.list()}" optionKey="id" 
                                    optionValue="${{it.firstName + ' ' + it.lastName}}"
                                    value="${productOrderInstance?.orderEnteredBy?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="orderPlacedBy"><g:message code="productOrder.orderPlacedBy.label" default="Order Placed By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productOrderInstance, field: 'orderPlacedBy', 'errors')}">
                                    <g:select name="orderPlacedBy.id" from="${org.floristonline.Party.list()}" optionKey="id" 
                                    optionValue="${{it.firstName + ' ' + it.lastName}}"
                                    value="${productOrderInstance?.orderPlacedBy?.id}"  />
                                </td>
                            </tr>
                        
                            
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>