
<%@ page import="org.floristonline.ShipmentItem" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'shipmentItem.label', default: 'ShipmentItem')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
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
            <span class="menuButton"><g:link controller="shipmentStatus">Shipment Status</g:link></span>
            <span class="menuButton"><g:link controller="invoice">Invoice</g:link></span>
            
            
        </div>
        <div>
        &nbsp;
        </div>
        <div class="nav">
            
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'shipmentItem.id.label', default: 'Id')}" />
                                                                                
                            <th><g:message code="shipmentItem.orderItem.label" default="Order Item" /></th>
                            
                            <th><g:message code="shipmentItem.orderedQuantity.label" default="Ordered Quantity" /></th>
                                                    
                            <g:sortableColumn property="quantity" title="${message(code: 'shipmentItem.quantity.label', default: 'Shipment Quantity')}" />
                        
                        	<th><g:message code="shipmentItem.shipmentStatus.label" default="Shipment Status" /></th>
                        
                            <g:sortableColumn property="shipmentContentsDescription" title="${message(code: 'shipmentItem.shipmentContentsDescription.label', default: 'Shipment Contents Description')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${shipmentItemInstanceList}" status="i" var="shipmentItemInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${shipmentItemInstance.id}">${fieldValue(bean: shipmentItemInstance, field: "id")}</g:link></td>
                        	
                            <td>
                            ${fieldValue(bean: shipmentItemInstance, field: "orderItem.product.name")}
                            
                            </td>
                        	
                        	<td>${fieldValue(bean: shipmentItemInstance, field: "orderItem.quantity")}</td>
                        	
                            <td>${fieldValue(bean: shipmentItemInstance, field: "quantity")}</td>
                            
                            <td>
                            ${fieldValue(bean: shipmentItemInstance, field: "shipmentStatus.shipmentStatusType.shipmentStatusType")} - 
                            
                            <g:formatDate format="yyyy-MM-dd" date="${{fieldValue(bean: shipmentItemInstance, field: "shipmentStatus.statusDate")}}" />
                            </td>
                        
                            <td>${fieldValue(bean: shipmentItemInstance, field: "shipmentContentsDescription")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${shipmentItemInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
