---
layout: documentation
title: Extension
---

[&laquo; Back to index](index.html)
# Extension

Table of Contents:

* [ConfigPrint](#ConfigPrint)
* [GertecPrt700](#GertecPrt700)

## ConfigPrint  {#ConfigPrint}

Component for ConfigPrint



### Properties  {#ConfigPrint-Properties}

{:.properties}

{:id="ConfigPrint.getAlinhamento" .text .ro .bo} *getAlinhamento*
: Getter Alinhamento

{:id="ConfigPrint.getAvancaLinhas" .number .ro .bo} *getAvancaLinhas*
: Getter Quantidade linhas puladas

{:id="ConfigPrint.getFonte" .text .ro .bo} *getFonte*
: Getter Fonte

{:id="ConfigPrint.getLineSpace" .number .ro .bo} *getLineSpace*
: Getter Espaço linhas

{:id="ConfigPrint.getOffSet" .number .ro .bo} *getOffSet*
: Getter OffSet

{:id="ConfigPrint.getTamanho" .number .ro .bo} *getTamanho*
: Getter Tamanho

{:id="ConfigPrint.getiHeight" .number .ro .bo} *getiHeight*
: Getter Height Impressão BarCode/Imagem

{:id="ConfigPrint.getiWidth" .number .ro .bo} *getiWidth*
: Getter Width Impressão BarCode/Imagem

{:id="ConfigPrint.isItalico" .boolean .ro .bo} *isItalico*
: Getter Italico Situação

{:id="ConfigPrint.isNegrito" .boolean .ro .bo} *isNegrito*
: Getter Negrito Situação

{:id="ConfigPrint.isSublinhado" .boolean .ro .bo} *isSublinhado*
: Getter Sublinhado Situação

{:id="ConfigPrint.setAlinhamento" .text .wo .bo} *setAlinhamento*
: Settar Alinhamento

{:id="ConfigPrint.setAvancaLinhas" .number .wo .bo} *setAvancaLinhas*
: Setter número pulo linhas

{:id="ConfigPrint.setFonte" .text .wo .bo} *setFonte*
: Settar Fonte

{:id="ConfigPrint.setItalico" .boolean .wo .bo} *setItalico*
: Setter Italico Situação

{:id="ConfigPrint.setLineSpace" .number .wo .bo} *setLineSpace*
: Settar Espaço Linhas

{:id="ConfigPrint.setNegrito" .boolean .wo .bo} *setNegrito*
: Setter Negrito Situação

{:id="ConfigPrint.setOffSet" .number .wo .bo} *setOffSet*
: Settar OffSet

{:id="ConfigPrint.setSublinhado" .boolean .wo .bo} *setSublinhado*
: Setter Sublinhado Situação

{:id="ConfigPrint.setTamanho" .number .wo .bo} *setTamanho*
: Settar Tamanho Impressão

{:id="ConfigPrint.setiHeight" .number .wo .bo} *setiHeight*
: Setter Height Impressão BarCode/Imagem

{:id="ConfigPrint.setiWidth" .number .wo .bo} *setiWidth*
: Setter Width Impressão BarCode/Imagem

### Events  {#ConfigPrint-Events}

{:.events}
None


### Methods  {#ConfigPrint-Methods}

{:.methods}
None


## GertecPrt700  {#GertecPrt700}

Component for GertecPrt700



### Properties  {#GertecPrt700-Properties}

{:.properties}

{:id="GertecPrt700.avancaLinha" .number .wo .bo} *avancaLinha*
: Pular Linhas

{:id="GertecPrt700.setConfigImpressao" .component .wo .bo} *setConfigImpressao*
: Set config

### Events  {#GertecPrt700-Events}

{:.events}
None


### Methods  {#GertecPrt700-Methods}

{:.methods}

{:id="GertecPrt700.ImpressoraOutput" class="method"} <i/> ImpressoraOutput()
: Finalizar impressão

{:id="GertecPrt700.ImprimirTexto" class="method"} <i/> ImprimirTexto(*texto*{:.text})
: Asigna el valor del cateto A. El separador decimal es el punto.

{:id="GertecPrt700.getStatusImpressora" class="method returns text"} <i/> getStatusImpressora()
: Verifica o status da impressora

{:id="GertecPrt700.imprimeBarCode" class="method returns boolean"} <i/> imprimeBarCode(*texto*{:.text},*type*{:.text})
: Asigna el valor del cateto A. El separador decimal es el punto.

{:id="GertecPrt700.imprimeImagem" class="method returns boolean"} <i/> imprimeImagem(*uri*{:.text})
: Imprimir Imagem
