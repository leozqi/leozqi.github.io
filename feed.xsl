<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom"
  exclude-result-prefixes="atom"
>
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <title>Web Feed • <xsl:value-of select="atom:feed/atom:title"/></title>
        
        <link rel="stylesheet" type="text/css" href="/css/style.min.css" />
      </head>
      <body>
        <section>
          <xsl:apply-templates select="atom:feed" />
        </section>
        <main id="content">
          <h3>Web feed preview</h3>
          <p><strong>Subscribe</strong> to this blog's latest posts by copying the URL of this Atom feed from the address bar to a <a href="https://aboutfeeds.com/">newsreader</a> app.</p>
          <h3>Recent Items</h3>
          <ul id="posts">
            <xsl:apply-templates select="atom:feed/atom:entry" />
          </ul>
        </main>
        <footer id="footer">
    © 2022 Leo Qi
</footer>

      </body>
    </html>
  </xsl:template>

  <xsl:template match="atom:feed">
    <header id="banner">
      <h2>
        <a href="https://leozqi.com"><xsl:value-of select="atom:title"/></a>
      </h2>
    </header>
  </xsl:template>

  <xsl:template match="atom:entry">
    <li>
      <a target="_blank">
        <xsl:attribute name="href">
          <xsl:value-of select="atom:id"/>
        </xsl:attribute>
        <xsl:value-of select="atom:title"/>
        <small><time><xsl:value-of select="atom:updated" /></time></small>
      </a>
    </li>
  </xsl:template>

</xsl:stylesheet>