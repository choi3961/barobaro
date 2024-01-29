<?xml version="1.0" encoding="utf-8"?>
<!-- Shows the list of departments of the courses -->
<xsl:stylesheet version="2.0" xmlns ="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Shows the list of course departments -->     
    <xsl:template name="support_dashboard_item">
      <main>
          <aside class="left">
              <xsl:for-each select = "quest"> 
                <div>
                  <a href = "/BaseX107/gsupport/{$title}/{position()}"> <!-- {current()} -->
                  <xsl:value-of select = "."/></a>             
                </div><br/>                      
              </xsl:for-each><br/> 
          </aside>
    
          <section class="center">
                  <!-- Content for the center column -->
                <div>
                  <xsl:value-of select = "./quest[$num]"></xsl:value-of><br/><br/>
                  <xsl:value-of select = "./answer[$num]"></xsl:value-of><br/>
                </div><br/>
 <!-- 
                 
              <xsl:for-each select = "quest">    
                <div>
                  <xsl:value-of select = "."></xsl:value-of><br/><br/>
                  <xsl:value-of select = "./following-sibling::answer"></xsl:value-of><br/>
                </div><br/>
              </xsl:for-each><br/>
  -->   
          </section>
              <aside class="right">
                <h2>Right Column</h2>
                <!-- Content for the right column -->
              </aside>
      </main>

    </xsl:template>
</xsl:stylesheet>