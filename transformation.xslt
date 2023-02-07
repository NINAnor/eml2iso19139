<?xml version="1.0" ?>
<xsl:transform version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:eml="eml://ecoinformatics.org/eml-2.1.1" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gml="http://www.opengis.net/gml" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.isotc211.org/2005/gmd http://www.isotc211.org/2005/gmd/gmd.xsd http://www.isotc211.org/2005/gmx http://www.isotc211.org/2005/gmx/gmx.xsd">
<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/eml:eml">
    <gmd:MD_Metadata>
      <gmd:fileIdentifier>
        <gco:CharacterString>
          <xsl:value-of select="dataset/alternateIdentifier[1]" />
        </gco:CharacterString>
      </gmd:fileIdentifier>
      <gmd:language>
        <gmd:LanguageCode codeList="http://www.loc.gov/standards/iso639-2/" codeSpace="ISO 639-2" codeListValue="{ dataset/language }">
          <xsl:value-of select="dataset/language" />
        </gmd:LanguageCode>
      </gmd:language>
      <gmd:characterSet>
        <gmd:MD_CharacterSetCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_CharacterSetCode" codeSpace="ISOTC211/19115" codeListValue="utf8">utf8</gmd:MD_CharacterSetCode>
      </gmd:characterSet>
      <gmd:dateStamp>
        <gco:Date>
          <xsl:value-of select="dataset/pubDate" />
        </gco:Date>
      </gmd:dateStamp>
      <gmd:metadataStandardName>
        <gco:CharacterString>ISO 19115:2003 - Geographic information - Metadata</gco:CharacterString>
      </gmd:metadataStandardName>
      <gmd:metadataStandardVersion>
        <gco:CharacterString>ISO 19115:2003</gco:CharacterString>
      </gmd:metadataStandardVersion>
      <gmd:dataSetURI>
        <gco:CharacterString>
          <xsl:value-of select="dataset/alternateIdentifier[2]" />
        </gco:CharacterString>
      </gmd:dataSetURI>
      <gmd:spatialRepresentationInfo>
        <gmd:MD_VectorSpatialRepresentation>
          <gmd:topologyLevel>
            <gmd:MD_TopologyLevelCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_TopologyLevelCode" codeSpace="ISOTC211/19115" codeListValue="geometryOnly">geometryOnly</gmd:MD_TopologyLevelCode>
          </gmd:topologyLevel>
          <gmd:geometricObjects>
            <gmd:MD_GeometricObjects>
              <gmd:geometricObjectType>
                <gmd:MD_GeometricObjectTypeCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_GeometricObjectTypeCode" codeSpace="ISOTC211/19115" codeListValue="vector">
                  point
                </gmd:MD_GeometricObjectTypeCode>
              </gmd:geometricObjectType>
            </gmd:MD_GeometricObjects>
          </gmd:geometricObjects>
        </gmd:MD_VectorSpatialRepresentation>
      </gmd:spatialRepresentationInfo>
      <gmd:referenceSystemInfo>
        <gmd:MD_ReferenceSystem>
          <gmd:referenceSystemIdentifier>
            <gmd:RS_Identifier>
              <gmd:authority>
                <gmd:CI_Citation>
                  <gmd:title>
                    <gco:CharacterString>European Petroleum Survey Group (EPSG) Geodetic Parameter Registry</gco:CharacterString>
                  </gmd:title>
                  <gmd:date>
                    <gmd:CI_Date>
                      <gmd:date>
                        <gco:Date>2008-11-12</gco:Date>
                      </gmd:date>
                      <gmd:dateType>
                        <gmd:CI_DateTypeCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_DateTypeCode" codeSpace="ISOTC211/19115" codeListValue="publication">publication</gmd:CI_DateTypeCode>
                      </gmd:dateType>
                    </gmd:CI_Date>
                  </gmd:date>
                  <gmd:citedResponsibleParty>
                    <gmd:CI_ResponsibleParty>
                      <gmd:organisationName>
                        <gco:CharacterString>European Petroleum Survey Group</gco:CharacterString>
                      </gmd:organisationName>
                      <gmd:contactInfo>
                        <gmd:CI_Contact>
                          <gmd:onlineResource>
                            <gmd:CI_OnlineResource>
                              <gmd:linkage>
                                <gmd:URL>http://www.epsg-registry.org</gmd:URL>
                              </gmd:linkage>
                            </gmd:CI_OnlineResource>
                          </gmd:onlineResource>
                        </gmd:CI_Contact>
                      </gmd:contactInfo>
                      <gmd:role>
                        <gmd:CI_RoleCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_RoleCode" codeSpace="ISOTC211/19115" codeListValue="originator">originator</gmd:CI_RoleCode>
                      </gmd:role>
                    </gmd:CI_ResponsibleParty>
                  </gmd:citedResponsibleParty>
                </gmd:CI_Citation>
              </gmd:authority>
              <gmd:code>
                <gco:CharacterString>urn:ogc:def:crs:EPSG:4326</gco:CharacterString>
              </gmd:code>
              <gmd:version>
                <gco:CharacterString>6.18.3</gco:CharacterString>
              </gmd:version>
            </gmd:RS_Identifier>
          </gmd:referenceSystemIdentifier>
        </gmd:MD_ReferenceSystem>
      </gmd:referenceSystemInfo>
      <gmd:identificationInfo>
        <gmd:MD_DataIdentification>
          <gmd:citation>
            <gmd:CI_Citation>
              <gmd:title>
                <gco:CharacterString>
                  <xsl:value-of select="dataset/title" />
                </gco:CharacterString>
              </gmd:title>
              <!-- TODO: SPLIT! -->
              <!--
              <xsl:call-template name="date">
                <xsl:with-param name="type" select="'begin'" />
                <xsl:with-param name="datestamp" select="additionalMetadata/gbif/formationPeriod" />
              </xsl:call-template>
              <xsl:call-template name="date">
                <xsl:with-param name="type" select="'end'" />
                <xsl:with-param name="datestamp" select="additionalMetadata/gbif/formationPeriod" />
              </xsl:call-template>
              -->
            </gmd:CI_Citation>
          </gmd:citation>
          <!-- TODO: status -->
          <gmd:status>
            <gmd:MD_ProgressCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_ProgressCode" codeSpace="ISOTC211/19115" codeListValue="onGoing">
              onGoing
            </gmd:MD_ProgressCode>
          </gmd:status>
          <gmd:pointOfContact>
            <xsl:call-template name="contact">
              <xsl:with-param name="role" select="'pointOfContact'" />
              <xsl:with-param name="name">
                <xsl:value-of select="dataset/creator/individualName/givenName" />
                <xsl:value-of select="' '" />
                <xsl:value-of select="dataset/creator/individualName/surName" />
              </xsl:with-param>
              <xsl:with-param name="organization" select="dataset/creator/organizationName" />
              <xsl:with-param name="position" select="dataset/creator/positionName" />
              <xsl:with-param name="email" select="dataset/creator/electronicMailAddress" />
              <xsl:with-param name="country" select="dataset/creator/address/country" />
            </xsl:call-template>
          </gmd:pointOfContact>
          <gmd:resourceMaintenance>
            <gmd:MD_MaintenanceInformation>
              <gmd:maintenanceAndUpdateFrequency>
                <!-- TODO: update frequency -->
                <gmd:MD_MaintenanceFrequencyCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_MaintenanceFrequencyCode" codeSpace="ISOTC211/19115" codeListValue="continual">
                  continual
                </gmd:MD_MaintenanceFrequencyCode>
              </gmd:maintenanceAndUpdateFrequency>
            </gmd:MD_MaintenanceInformation>
          </gmd:resourceMaintenance>
          <gmd:descriptiveKeywords>
            <gmd:MD_Keywords>
              <xsl:for-each select="keywordSet/keyword">
                <gmd:keyword>
                  <gco:CharacterString>
                    <xsl:value-of select="." />
                  </gco:CharacterString>
                </gmd:keyword>
              </xsl:for-each>
              <gmd:type>
                <gmd:MD_KeywordTypeCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_KeywordTypeCode" codeSpace="ISOTC211/19115" codeListValue="default">
                  default
                </gmd:MD_KeywordTypeCode>
              </gmd:type>
            <!--
            {% elif value['vocabulary'] %}
              <gmd:thesaurusName>
                <gmd:CI_Citation>
                  {% if value['vocabulary']['name'] and value['vocabulary']['url'] %}
                  <gmd:title>
                    <gmx:Anchor xlink:title="{{ get_charstring(value['vocabulary'].get('name'), record['metadata']['language'], record['metadata']['language_alternate'])[0] }}" xlink:href="{{ value['vocabulary']['url'] }}">{{  get_charstring(value['vocabulary'].get('name'), record['metadata']['language'], record['metadata']['language_alternate'])[0] }}</gmx:Anchor>
                  </gmd:title>
                  {% elif not value['vocabulary']['url'] %}
                  {{ cs.get_freetext('title', record['metadata']['language_alternate'], get_charstring(value['vocabulary'].get('name'), record['metadata']['language'], record['metadata']['language_alternate'])) }}
                  {% endif %}
                  <gmd:date>
                    <gmd:CI_Date>
                      <gmd:date gco:nilReason="missing"/>
                      <gmd:dateType gco:nilReason="missing"/>
                    </gmd:CI_Date>
                  </gmd:date>
                </gmd:CI_Citation>
              </gmd:thesaurusName>
            {% endif %}
            -->
            </gmd:MD_Keywords>
          </gmd:descriptiveKeywords>
        </gmd:MD_DataIdentification>
      </gmd:identificationInfo>
     
     <gmd:resourceConstraints>
        <gmd:MD_LegalConstraints>
          <gmd:accessConstraints>
            <gmd:MD_RestrictionCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_RestrictionCode" codeSpace="ISOTC211/19115" codeListValue="license">
              license
            </gmd:MD_RestrictionCode>
          </gmd:accessConstraints>
        </gmd:MD_LegalConstraints>
      </gmd:resourceConstraints>
      <gmd:spatialRepresentationType>
        <gmd:MD_SpatialRepresentationTypeCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_SpatialRepresentationTypeCode" codeSpace="ISOTC211/19115" codeListValue="vector">
          vector
        </gmd:MD_SpatialRepresentationTypeCode>
      </gmd:spatialRepresentationType>
      <gmd:language>
        <gmd:LanguageCode codeList="http://www.loc.gov/standards/iso639-2/" codeSpace="ISO 639-2" codeListValue="{ dataset/language }">
          <xsl:value-of select="dataset/language" />
        </gmd:LanguageCode>
      </gmd:language>
      <gmd:characterSet>
        <gmd:MD_CharacterSetCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_CharacterSetCode" codeSpace="ISOTC211/19115" codeListValue="utf8">utf8</gmd:MD_CharacterSetCode>
      </gmd:characterSet>
      <!--
      {% for tc in record['identification']['topiccategory'] %}
      <gmd:topicCategory>
        <gmd:MD_TopicCategoryCode>{{ tc }}</gmd:MD_TopicCategoryCode>
      </gmd:topicCategory>
      {% endfor %}
      -->
      <gmd:extent>
        <gmd:EX_Extent>
          <gmd:geographicElement>
            <gmd:EX_GeographicBoundingBox>
              <gmd:extentTypeCode>
                <gco:Boolean>1</gco:Boolean>
              </gmd:extentTypeCode>
              <gmd:westBoundLongitude>
                <gco:Decimal>
                  <xsl:value-of select="coverage/geographicCoverage/boundingCoordinates/westBoundingCoordinate" />
                </gco:Decimal>
              </gmd:westBoundLongitude>
              <gmd:eastBoundLongitude>
                <gco:Decimal>
                  <xsl:value-of select="coverage/geographicCoverage/boundingCoordinates/eastBoundingCoordinate" />
                </gco:Decimal>
              </gmd:eastBoundLongitude>
              <gmd:southBoundLatitude>
                <gco:Decimal>
                  <xsl:value-of select="coverage/geographicCoverage/boundingCoordinates/southBoundingCoordinate" />
                </gco:Decimal>
              </gmd:southBoundLatitude>
              <gmd:northBoundLatitude>
                <gco:Decimal>
                  <xsl:value-of select="coverage/geographicCoverage/boundingCoordinates/northBoundingCoordinate" />
                </gco:Decimal>
              </gmd:northBoundLatitude>
            </gmd:EX_GeographicBoundingBox>
          </gmd:geographicElement>
          <!--
          <gmd:temporalElement>
            <gmd:EX_TemporalExtent>
              <gmd:extent>
                <gml:TimePeriod gml:id="T001">
                  <gml:beginPosition>{{ temporal['begin'] }}</gml:beginPosition>
                  {% if temporal['end'] == 'now' %}
                  <gml:endPosition indeterminatePosition="now"/>
                  {% else %}
                  <gml:endPosition>{{ temporal['end'] }}</gml:endPosition>
                  {% endif %}
                  {% if temporal['resolution'] %}
                  <gml:duration>{{ temporal['resolution'] }}</gml:duration>
                  {% endif %}
                </gml:TimePeriod>
              </gmd:extent>
            </gmd:EX_TemporalExtent>
          </gmd:temporalElement>
          -->
        </gmd:EX_Extent>
      </gmd:extent>

  <gmd:distributionInfo>
    <gmd:MD_Distribution>
      <!--
      {% if 'distributor' in record['contact'] %}
      <gmd:distributor>
        <gmd:MD_Distributor>
          <gmd:distributorContact>
          {% set contact = record['contact']['distributor'] %}
          {% set role = 'distributor' %}
          {% include "contact.j2" %}
          </gmd:distributorContact>
        </gmd:MD_Distributor>
      </gmd:distributor>
      {% endif %}
      -->
      <gmd:transferOptions>
        <gmd:MD_DigitalTransferOptions>
          <gmd:onLine>
            <gmd:CI_OnlineResource>
              <gmd:linkage>
                <gmd:URL>
                  <!-- TODO: DwCA -->
                  <xsl:value-of select="dataset/alternateIdentifier[1]" />
                </gmd:URL>
              </gmd:linkage>
              <gmd:protocol>
                <gco:CharacterString>WWW:LINK</gco:CharacterString>
              </gmd:protocol>
              <gmd:name>
                <gco:CharacterString>Dataset webpage</gco:CharacterString>
              </gmd:name>
              <gmd:description>
                <gco:CharacterString>Dataset webpage</gco:CharacterString>
              </gmd:description>
            </gmd:CI_OnlineResource>
          </gmd:onLine>
        </gmd:MD_DigitalTransferOptions>
      </gmd:transferOptions>
    </gmd:MD_Distribution>
  </gmd:distributionInfo>
  
  <!--
  <gmd:metadataMaintenance>
    <gmd:MD_MaintenanceInformation>
      <gmd:maintenanceAndUpdateFrequency>
        <gmd:MD_MaintenanceFrequencyCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_MaintenanceFrequencyCode" codeSpace="ISOTC211/19115" codeListValue="{{ record['identification']['maintenancefrequency'] }}">{{ record['identification']['maintenancefrequency'] }}</gmd:MD_MaintenanceFrequencyCode>
      </gmd:maintenanceAndUpdateFrequency>
      <gmd:maintenanceNote>
        <gco:CharacterString>This metadata record was generated by pygeometa-{{ pygeometa_version }} (https://github.com/geopython/pygeometa)</gco:CharacterString>
      </gmd:maintenanceNote>
    </gmd:MD_MaintenanceInformation>
  </gmd:metadataMaintenance>
  -->
    </gmd:MD_Metadata>
  </xsl:template>

  <xsl:template name="date">
    <xsl:param name="type" />
    <xsl:param name="datestamp" />
    <gmd:date>
      <gmd:CI_Date>
        <gmd:date>
          {% if datestamp|length > 11 %}
          <gco:DateTime>{{ datestamp }}</gco:DateTime>
          {% else %}
          <gco:Date>{{ datestamp }}</gco:Date>
          {% endif %}
        </gmd:date>
        <gmd:dateType>
          <gmd:CI_DateTypeCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_DateTypeCode" codeSpace="ISOTC211/19115" codeListValue="{{ date_type }}">{{ date_type }}</gmd:CI_DateTypeCode>
        </gmd:dateType>
      </gmd:CI_Date>
    </gmd:date>
  </xsl:template>

  <xsl:template name="contact">
    <xsl:param name="role" />
    <xsl:param name="name" />
    <xsl:param name="organization" />
    <xsl:param name="position" />
    <xsl:param name="email" />
    <xsl:param name="country" />
    <gmd:CI_ResponsibleParty id="contact-{ $role }">
      <gmd:individualName>
        <gco:CharacterString>
          <xsl:value-of select="$name" />
        </gco:CharacterString>
      </gmd:individualName>
      <gmd:organizationName>
        <gco:CharacterString>
          <xsl:value-of select="$organization" />
        </gco:CharacterString>
      </gmd:organizationName>
      <gmd:positionName>
        <gco:CharacterString>
          <xsl:value-of select="$position" />
        </gco:CharacterString>
      </gmd:positionName>
      <gmd:country>
        <gco:CharacterString>
          <xsl:value-of select="$country" />
        </gco:CharacterString>
      </gmd:country>
      <gmd:contactInfo>
        <gmd:CI_Contact>
          <gmd:phone>
            <gmd:CI_Telephone>
              <gmd:voice gco:nilReason="missing"/>
              <gmd:facsimile gco:nilReason="missing"/>
            </gmd:CI_Telephone>
          </gmd:phone>
          <gmd:address>
            <gmd:CI_Address>
              <gmd:country>
                <gco:CharacterString>
                  <xsl:value-of select="$country" />
                </gco:CharacterString>
              </gmd:country>
              <gmd:electronicMailAddress>
                <gco:CharacterString>
                  <xsl:value-of select="$email" />
                </gco:CharacterString>
              </gmd:electronicMailAddress>
            </gmd:CI_Address>
          </gmd:address>
          <!--
          <gmd:onlineResource>
            <gmd:CI_OnlineResource>
              <gmd:linkage>
                <gmd:URL>{{ contact['url']|e }}</gmd:URL>
              </gmd:linkage>
              <gmd:protocol>
                <gco:CharacterString>WWW:LINK</gco:CharacterString>
              </gmd:protocol>
              <gmd:function>
                <gmd:CI_OnLineFunctionCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_OnLineFunctionCode" codeListValue="information" codeSpace="ISOTC211/19115">information</gmd:CI_OnLineFunctionCode>
              </gmd:function>
            </gmd:CI_OnlineResource>
          </gmd:onlineResource>
          -->
        </gmd:CI_Contact>
      </gmd:contactInfo>
      <gmd:role>
        <gmd:CI_RoleCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_RoleCode" codeSpace="ISOTC211/19115" codeListValue="{ $role }">
          <xsl:value-of select="$role" />
        </gmd:CI_RoleCode>
      </gmd:role>
    </gmd:CI_ResponsibleParty>
  </xsl:template>

</xsl:transform>

