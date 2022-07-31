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
        <meta charset="utf-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
<meta name="description" content="leozqi.com"></meta>
<link rel="shortcut icon" href="https://leozqi.com/favicon.svg"></link>
<title>Leo Qi</title>
        
<link rel="preload" as="style" href="/css/style.min.css" onload="this.onload=null;this.rel='stylesheet'"></link>
<noscript>
  <link rel="stylesheet" href="/css/style.min.css"></link>
</noscript>

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
    <nav>
        <h2><a href="https://leozqi.com">Leo Qi</a></h2>
        <ul>
            <li><a href="https://leozqi.com">home</a></li>
            <li>
                
                <a href="/atom.xml" title="posts">posts</a>
                
            </li>
        </ul>
    </nav>
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