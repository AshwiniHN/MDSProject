<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="oramds:/apps/SOA-INFRA/WSDL/XREFMultiLookUp.wsdl"/>
      <rootElement name="xrefinput" namespace="http://xmlns.oracle.com/XREFInterface"/>
    </source>
    <source type="WSDL">
      <schema location="../AssociateOpportunityPartnerSFProv.wsdl"/>
      <rootElement name="processRequest" namespace="http://xmlns.oracle.com/AccountIntegration/AssociateOpportunityPartnerSFProv/AssociateOpportunityPartnerSFProv"/>
      <param name="inputVariable.payload" />
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/WSDL/generateEnterprise.wsdl"/>
      <rootElement name="create" namespace="urn:enterprise.soap.sforce.com"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [FRI JAN 08 12:07:04 CST 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:ns0="http://www.siebel.com/xml/ISG_SF_Opportunity_IO"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns3="http://xmlns.oracle.com/AccountIntegration/AssociateOpportunityPartnerSFProv/AssociateOpportunityPartnerSFProv"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:tns="urn:enterprise.soap.sforce.com"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:fns="urn:fault.enterprise.soap.sforce.com"
                xmlns:client="http://xmlns.oracle.com/LatestCode/XREFInterface/XREFMultiLookUp"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns1="http://schemas.oracle.com/bpel/extension"
                xmlns:ns2="http://xmlns.oracle.com/XREFInterface"
                xmlns:ens="urn:sobject.enterprise.soap.sforce.com"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl ns0 ns3 plnk wsdl client xsd ns1 ns2 soap tns fns ens xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:import href="oramds:/apps/XSL/common/convertOPToOD.xsl"/>
  <xsl:param name="inputVariable.payload"/>
  <xsl:template match="/">
    <!--tns:create>
      <xsl:for-each select="$inputVariable.payload/ns3:processRequest/ns3:SiebelMessage/ns0:ListOfIsg_Sf_Opportunity_Io/ns0:Opportunity/ns0:ListOfOpportunity_Organization/ns0:Opportunity_Organization">
        <tns:sObjects>
          <ens:Id>
            <xsl:value-of select="/ns2:xrefinput/ns2:operation/ns2:refHostRowId"/>
          </ens:Id>
        </tns:sObjects>
      </xsl:for-each>
    </tns:create-->
    <tns:create>
      <xsl:apply-templates select="$inputVariable.payload/ns3:processRequest/ns3:SiebelMessage/ns0:ListOfIsg_Sf_Opportunity_Io/ns0:Opportunity/ns0:ListOfOpportunity_Organization/ns0:Opportunity_Organization"></xsl:apply-templates>
    </tns:create>
  </xsl:template>
  <xsl:template match="//ns3:processRequest/ns3:SiebelMessage/ns0:ListOfIsg_Sf_Opportunity_Io/ns0:Opportunity/ns0:ListOfOpportunity_Organization/ns0:Opportunity_Organization">
    <xsl:variable name="partnerId" select="ns0:Id"/>
    <xsl:variable name="optyId"
                  select="$inputVariable.payload/ns3:processRequest/ns3:SiebelMessage/ns0:ListOfIsg_Sf_Opportunity_Io/ns0:Opportunity/ns0:Id"/>
    <xsl:variable name="optyPartnerID" select="concat($optyId,'+',$partnerId)"/>
    <xsl:if test="(string-length(/ns2:xrefinput/ns2:operation[ns2:refHostRowId =$optyId]/ns2:hostRowId) >0 and string-length(/ns2:xrefinput/ns2:operation[ns2:refHostRowId =$partnerId]/ns2:hostRowId) > 0) ">
      <tns:sObjects>
        <xsl:attribute name="xsi:type">
          <xsl:text disable-output-escaping="no">Opportunity_Partner__c</xsl:text>
        </xsl:attribute>
        <xsl:if test="$inputVariable.payload/ns3:processRequest/ns3:SiebelMessage/ns0:ListOfIsg_Sf_Opportunity_Io/ns0:Opportunity/ns0:MFEDealRegExpirationDate">
          <ens:Partner_Expiration_Date__c>
            <xsl:call-template name="ConvertSiebelDateToSalesforce">
              <xsl:with-param name="Date"
                              select="$inputVariable.payload/ns3:processRequest/ns3:SiebelMessage/ns0:ListOfIsg_Sf_Opportunity_Io/ns0:Opportunity/ns0:MFEDealRegExpirationDate"/>
            </xsl:call-template>
            <!--xsl:value-of select="$inputVariable.payload/ns3:processRequest/ns3:SiebelMessage/ns0:ListOfIsg_Sf_Opportunity_Io/ns0:Opportunity/ns0:MFEDealRegExpirationDate"/-->
          </ens:Partner_Expiration_Date__c>
        </xsl:if>
        <xsl:choose>
          <xsl:when test="/ns2:xrefinput/ns2:operation[ns2:refHostRowId =$optyPartnerID]/ns2:hostRowId !=''">
            <ens:Id>
              <xsl:value-of select="/ns2:xrefinput/ns2:operation[ns2:refHostRowId =$optyPartnerID]/ns2:hostRowId"/>
            </ens:Id>
          </xsl:when>
          <xsl:otherwise>
            <ens:Id></ens:Id>
          </xsl:otherwise>
        </xsl:choose>
        <ens:Opportunity__c>
          <xsl:value-of select="/ns2:xrefinput/ns2:operation[ns2:refHostRowId =$optyId]/ns2:hostRowId"/>
        </ens:Opportunity__c>
        <ens:Partner_Account__c>
          <xsl:value-of select="/ns2:xrefinput/ns2:operation[ns2:refHostRowId =$partnerId]/ns2:hostRowId"/>
        </ens:Partner_Account__c>
        <xsl:if test="@IsPrimaryMVG">
          <xsl:choose>
            <xsl:when test="@IsPrimaryMVG='Y'">
              <ens:Primary__c>
                <xsl:value-of select="'true'"/>
              </ens:Primary__c>
            </xsl:when>
            <xsl:otherwise>
              <ens:Primary__c>
                <xsl:value-of select="'false'"/>
              </ens:Primary__c>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
        <xsl:if test="ns0:ISGSFPartnerDistiLockedFlag">
          <xsl:choose>
            <xsl:when test="ns0:ISGSFPartnerDistiLockedFlag='Y'">
              <ens:Disti_Locked__c>
                <xsl:value-of select="'true'"/>
              </ens:Disti_Locked__c>
            </xsl:when>
            <xsl:otherwise>
              <ens:Disti_Locked__c>
                <xsl:value-of select="'false'"/>
              </ens:Disti_Locked__c>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
        <xsl:if test="ns0:ISGSFPartnerPBR">
          <ens:Program_Benefit__c>
            <xsl:value-of select="ns0:ISGSFPartnerPBR"/>
          </ens:Program_Benefit__c>
        </xsl:if>
      </tns:sObjects>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>