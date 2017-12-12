<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="oramds:/apps/WSDL/generateEnterprise.wsdl"/>
      <rootElement name="queryResponse" namespace="urn:enterprise.soap.sforce.com"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/WSDL/generateEnterprise.wsdl"/>
      <rootElement name="create" namespace="urn:enterprise.soap.sforce.com"/>
    </target>
  </mapTargets>
  <substitutions>
      <sourceSubst substPath="/tns:queryResponse/tns:result/tns:records" substType="ens:UserLogin"/>
  </substitutions>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [THU AUG 17 22:08:02 IST 2017]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:fns="urn:fault.enterprise.soap.sforce.com"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:tns="urn:enterprise.soap.sforce.com"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ens="urn:sobject.enterprise.soap.sforce.com"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsl fns xsd soap tns bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <tns:create>
      <tns:sObjects>
        <xsl:attribute name="xsi:type">
          <xsl:text disable-output-escaping="no">ens:Case</xsl:text>
        </xsl:attribute>
        <ens:Description>
          <xsl:text disable-output-escaping="no">This user has been termed in CDS.</xsl:text>
        </ens:Description>
        <ens:OwnerId>
          <xsl:text disable-output-escaping="no">00Gq0000001XC9EEAW</xsl:text>
        </ens:OwnerId>
        <ens:RecordTypeId>
          <xsl:text disable-output-escaping="no">012q00000008zO0AAI</xsl:text>
        </ens:RecordTypeId>
        <ens:Status>
          <xsl:text disable-output-escaping="no">New</xsl:text>
        </ens:Status>
		<ens:Request_Type__c>
          <xsl:text disable-output-escaping="no">Territory</xsl:text>
        </ens:Request_Type__c>
		<ens:Request_Detail__c>
          <xsl:text disable-output-escaping="no">Term User</xsl:text>
        </ens:Request_Detail__c>
        <ens:Subject>
          <xsl:text disable-output-escaping="no">Term User</xsl:text>
        </ens:Subject>
      <ens:User__c>
          <xsl:value-of select="/tns:queryResponse/tns:result/tns:records/ens:UserId"/>
        </ens:User__c>
		 
      </tns:sObjects>
    </tns:create>
  </xsl:template>
</xsl:stylesheet>