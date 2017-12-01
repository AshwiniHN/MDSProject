<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="oramds:/apps/WSDL/generateEnterprise.wsdl"/>
      <rootElement name="retrieve" namespace="urn:enterprise.soap.sforce.com"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/WSDL/generateEnterprise.wsdl"/>
      <rootElement name="retrieve" namespace="urn:enterprise.soap.sforce.com"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [MON SEP 19 11:00:21 CDT 2016]. -->
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
                exclude-result-prefixes="xsi xsl fns xsd soap tns ens bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
  <!--xsl:key name="product" match="/tns:retrieve/tns:sObjectType/tns:ids/text()" use="." /-->
  <xsl:template match="/">
    <xsl:variable name="ids" select="/tns:retrieve/tns:ids"/>
    <tns:retrieve>
      <tns:fieldList>
        <xsl:value-of select="/tns:retrieve/tns:fieldList"/>
      </tns:fieldList>
      <tns:sObjectType>
        <xsl:value-of select="/tns:retrieve/tns:sObjectType"/>
      </tns:sObjectType>
      <!--xsl:for-each select="/tns:retrieve/tns:sObjectType/tns:ids/text()[generate-id()
                                       = generate-id(key('product',.)[1])]">
    <tns:id>
      <xsl:value-of select="."/>
    </tns:id>
  </xsl:for-each-->
      <xsl:for-each select="$ids">
        <xsl:if test="generate-id() = generate-id($ids[. = current()][1])">
        <tns:ids>
          <xsl:value-of select="."/>
          </tns:ids>
        </xsl:if>
      </xsl:for-each>
      
      <!--xsl:for-each select="distinct-values(/tns:retrieve/tns:ids/text())">
 <tns:ids>
      <xsl:value-of select="."/>
    </tns:ids>
  </xsl:for-each-->
    </tns:retrieve>
  </xsl:template>
</xsl:stylesheet>
