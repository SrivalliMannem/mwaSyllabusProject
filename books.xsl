<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <head>
         <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th {
           background-color: grey;
           color: white;
          }
          th, td {
          border: 1px solid black;
          padding: 8px;
          text-align: left;
          }
          .author {
          color: blue;
          font-weight: bold;
          text-transform: uppercase;
          }
       </style>
      </head>
     <body>
       <table>
         <tr>
         <th>Title</th>
          <th>Author</th>
          <th>ISBN</th>
          <th>Publisher</th>
           <th>Edition</th>
           <th>Price</th>
           </tr>
     <xsl:for-each select="bookstore/book">
     <tr>
        <td><xsl:value-of select="title"/></td>
        <td class="author"><xsl:value-of select="author"/></td>
        <td><xsl:value-of select="isbn"/></td>
         <td><xsl:value-of select="publisher"/></td>
         <td><xsl:value-of select="edition"/></td>
        <td><xsl:value-of select="price"/></td>
     </tr>
     </xsl:for-each>
    </table>
   </body>
   </html>
  </xsl:template>
</xsl:stylesheet>

