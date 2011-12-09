
<%@ page import="org.floristonline.Invoice" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'invoice.label', default: 'Invoice')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
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
            <span class="menuButton"><g:link controller="productOrder">Product Order</g:link></span>
            <span class="menuButton"><g:link controller="estimatedProductCost">Estimated  Cost</g:link></span>
            <span class="menuButton"><g:link controller="priceComponent">Price Component</g:link></span>
            <span class="menuButton"><g:link controller="shipment">Shipment</g:link></span>
            <span class="menuButton"><g:link controller="invoiceItem">Invoice Item</g:link></span>
            
            
        </div>
        <div>
        &nbsp;
        </div>
        <div class="nav">
            
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
                            <td valign="top" class="name"><g:message code="invoice.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invoiceInstance, field: "id")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invoice.invoiceItem.label" default="Invoice Item" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${invoiceInstance.invoiceItem}" var="i">
                                    <li><g:link controller="invoiceItem" action="show" id="${i.id}">${i?.shipmentItem?.orderItem?.product.name}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    	
                    	<tr class="prop">
                            <td valign="top" class="name"><g:message code="invoice.invoiceDate.label" default="Invoice Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate format="yyyy-MM-dd" date="${invoiceInstance?.invoiceDate}" /></td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invoice.invoiceStatusType.label" default="Invoice Status Type" /></td>
                            
                            <td valign="top" class="value"><g:link controller="party" action="show" id="${invoiceInstance?.invoiceStatusType?.id}">${invoiceInstance?.invoiceStatusType?.invoiceStatusType}</g:link></td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invoice.invoiceStatus.label" default="Invoice Status Date" /></td>
                            
                            <td valign="top" class="value"><g:link controller="party" action="show" id="${invoiceInstance?.invoiceStatus?.id}"><g:formatDate format="yyyy-MM-dd" date="${invoiceInstance?.invoiceStatus?.statusDate}" /></g:link></td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invoice.billedFrom.label" default="Billed From" /></td>
                            
                            <td valign="top" class="value"><g:link controller="party" action="show" id="${invoiceInstance?.billedFrom?.id}">${invoiceInstance?.billedFrom?.firstName} ${invoiceInstance?.billedFrom?.lastName}</g:link></td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invoice.sentFrom.label" default="Billed From Address" /></td>
                            
                            <td valign="top" class="value"><g:link controller="contactMechanism" action="show" id="${invoiceInstance?.sentFrom?.id}">${invoiceInstance?.sentFrom?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invoice.billedTo.label" default="Billed To" /></td>
                            
                            <td valign="top" class="value"><g:link controller="party" action="show" id="${invoiceInstance?.billedTo?.id}">${invoiceInstance?.billedTo?.firstName} ${invoiceInstance?.billedTo?.lastName}</g:link></td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invoice.addressedTo.label" default="Billed To Address" /></td>
                            
                            <td valign="top" class="value"><g:link controller="contactMechanism" action="show" id="${invoiceInstance?.addressedTo?.id}">${invoiceInstance?.addressedTo?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        
                    
                        
                    
                        
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invoice.message.label" default="Message" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invoiceInstance, field: "message")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="invoice.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: invoiceInstance, field: "description")}</td>
                            
                        </tr>
                    
                        
                    
                        
                    
                        
                    
                        
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${invoiceInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
