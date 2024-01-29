<?xml version="1.0" encoding="utf-8"?>
<!-- This is the basic frame for presentation -->
<xsl:stylesheet version="2.0" xmlns ="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Body part of HTML document -->
    <xsl:template name="container">
        <div class="container">   
            <xsl:call-template name="header"/>
            <xsl:call-template name="navigation_bar"/>                      
            <xsl:call-template name="body_contents"/>
            <xsl:call-template name="footer"/>
        </div>
        <v><xsl:value-of select='$title'/></v>
    </xsl:template> 
    
    <!-- Header part of HTML body -->
    <xsl:template name="header">
       <header> 
         <h1> 대한 민국 복지 지원 정책 </h1>
       </header><br/>
    </xsl:template>
    
    <!-- Navigation bar part of HTML body -->
    <xsl:template name="navigation_bar">
       <div class ="navigation_bar"> 
            <button class="right_button"> <a href="/BaseX107/gsupport/lifep">생계 급여 정책</a></button>
            <button class="right_button"> <a href="/BaseX107/gsupport/housingp">주거 급여 정책</a></button>
            <button class="right_button"> <a href="/BaseX107/gsupport/medp">의료 지원 정책</a></button>
            <button class="right_button"> <a href="/BaseX107/gsupport/edup">교육 지원 정책</a></button>
            <button class="right_button"> <a href="/BaseX107/gsupport/emergencyp">긴급 지원 정책</a></button>
            <button class="left_button"> <a href="/BaseX107/gsupport/deliveryp">출산 지원 정책</a></button>        
       </div>
       <br/>
    </xsl:template>    
    
    <!-- Body part of HTML body -->
    <!-- This part could be replaced with other specific template body -->
    <xsl:template name="body_contents">
        <xsl:apply-templates select = "support"/>
    </xsl:template>    
    
    <!-- Footer part of HTML body -->
    <xsl:template name="footer">
        <footer>This is footer part3
        </footer>
        <hr/>
    </xsl:template>
</xsl:stylesheet>