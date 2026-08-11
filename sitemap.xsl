<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/1999/xhtml"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>
          <xsl:choose>
            <xsl:when test="sitemap:sitemapindex">XML Sitemap Index</xsl:when>
            <xsl:otherwise>XML Sitemap</xsl:otherwise>
          </xsl:choose>
        </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <style type="text/css">
          body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            font-size: 14px;
            color: #333;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
          }
          .container {
            max-width: 1200px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
          }
          h1 {
            font-size: 24px;
            font-weight: 600;
            margin: 0 0 10px 0;
            color: #000;
          }
          .intro {
            color: #666;
            margin-bottom: 30px;
            line-height: 1.5;
          }
          table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
          }
          th {
            background-color: #f8f9fa;
            color: #333;
            font-weight: 600;
            text-align: left;
            padding: 12px 15px;
            border-bottom: 2px solid #e0e0e0;
          }
          td {
            padding: 12px 15px;
            border-bottom: 1px solid #e0e0e0;
          }
          tr:hover {
            background-color: #f8f9fa;
          }
          a {
            color: #007aff;
            text-decoration: none;
          }
          a:hover {
            text-decoration: underline;
          }
          .url-column {
            max-width: 500px;
            word-break: break-all;
          }
          .priority-high {
            color: #28a745;
            font-weight: 600;
          }
          .priority-medium {
            color: #ffc107;
            font-weight: 600;
          }
          .priority-low {
            color: #6c757d;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>
            <xsl:choose>
              <xsl:when test="sitemap:sitemapindex">XML Sitemap Index</xsl:when>
              <xsl:otherwise>XML Sitemap</xsl:otherwise>
            </xsl:choose>
          </h1>
          <div class="intro">
            <xsl:choose>
              <xsl:when test="sitemap:sitemapindex">
                This is an XML Sitemap Index which is supposed to be processed by search engines like Google, Bing, and Yahoo.
                <br />
                It contains links to all the sitemaps for this website.
              </xsl:when>
              <xsl:otherwise>
                This is an XML Sitemap which is supposed to be processed by search engines like Google, Bing, and Yahoo.
                <br />
                You can find more information about XML sitemaps at <a href="https://www.sitemaps.org">sitemaps.org</a>.
              </xsl:otherwise>
            </xsl:choose>
          </div>
          
          <!-- Sitemap Index Table -->
          <xsl:if test="sitemap:sitemapindex">
            <table>
              <thead>
                <tr>
                  <th>Sitemap</th>
                  <th>Last Modified</th>
                </tr>
              </thead>
              <tbody>
                <xsl:for-each select="sitemap:sitemapindex/sitemap:sitemap">
                  <tr>
                    <td class="url-column">
                      <a href="{sitemap:loc}">
                        <xsl:value-of select="sitemap:loc"/>
                      </a>
                    </td>
                    <td>
                      <xsl:value-of select="substring(sitemap:lastmod, 1, 10)"/>
                    </td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </xsl:if>
          
          <!-- Regular Sitemap Table -->
          <xsl:if test="sitemap:urlset">
            <table>
            <thead>
              <tr>
                <th>URL</th>
                <th>Priority</th>
                <th>Change Frequency</th>
                <th>Last Modified</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <tr>
                  <td class="url-column">
                    <a href="{sitemap:loc}">
                      <xsl:value-of select="sitemap:loc"/>
                    </a>
                  </td>
                  <td>
                    <xsl:variable name="priority" select="sitemap:priority"/>
                    <xsl:choose>
                      <xsl:when test="$priority &gt;= 0.8">
                        <span class="priority-high">
                          <xsl:value-of select="sitemap:priority"/>
                        </span>
                      </xsl:when>
                      <xsl:when test="$priority &gt;= 0.5">
                        <span class="priority-medium">
                          <xsl:value-of select="sitemap:priority"/>
                        </span>
                      </xsl:when>
                      <xsl:otherwise>
                        <span class="priority-low">
                          <xsl:value-of select="sitemap:priority"/>
                        </span>
                      </xsl:otherwise>
                    </xsl:choose>
                  </td>
                  <td>
                    <xsl:value-of select="sitemap:changefreq"/>
                  </td>
                  <td>
                    <xsl:value-of select="substring(sitemap:lastmod, 1, 10)"/>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
            </table>
          </xsl:if>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
