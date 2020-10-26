// package com.GertecPrt800;

// import com.ConfigPrint.ConfigPrint;

// // package es.gertec.Gertec; //800

// //  © Douglas Silva de Melo

// import br.com.gertec.gedi.GEDI;
// import br.com.gertec.gedi.enums.GEDI_PRNTR_e_Alignment;
// import br.com.gertec.gedi.enums.GEDI_PRNTR_e_BarCodeType;
// import br.com.gertec.gedi.enums.GEDI_PRNTR_e_Status;
// import br.com.gertec.gedi.exceptions.GediException;
// import br.com.gertec.gedi.impl.Gedi;
// import br.com.gertec.gedi.interfaces.IGEDI;
// import br.com.gertec.gedi.interfaces.IPRNTR;
// import br.com.gertec.gedi.structs.GEDI_PRNTR_st_BarCodeConfig;
// import br.com.gertec.gedi.structs.GEDI_PRNTR_st_PictureConfig;
// import br.com.gertec.gedi.structs.GEDI_PRNTR_st_StringConfig;

// import com.google.appinventor.components.annotations.DesignerComponent;
// import com.google.appinventor.components.annotations.DesignerProperty;
// import com.google.appinventor.components.annotations.PropertyCategory;
// import com.google.appinventor.components.annotations.SimpleEvent;
// import com.google.appinventor.components.annotations.SimpleFunction;
// import com.google.appinventor.components.annotations.SimpleObject;
// import com.google.appinventor.components.annotations.SimpleProperty;
// import com.google.appinventor.components.annotations.UsesLibraries;
// import com.google.appinventor.components.common.ComponentCategory;
// import com.google.appinventor.components.common.PropertyTypeConstants;
// import com.google.appinventor.components.runtime.util.MediaUtil;
// import com.google.appinventor.components.runtime.*;
// import android.graphics.Paint;
// import android.app.Activity;
// import android.graphics.Typeface;
// import android.graphics.Bitmap;
// import android.graphics.BitmapFactory;
// import android.content.Intent;
// import android.net.Uri;

// @DesignerComponent(version = GertecPrt800.VERSION, description = "Gertec Funções", category = ComponentCategory.EXTENSION, nonVisible = true, iconName = "")

// @SimpleObject(external = true)
// @UsesLibraries(libraries = "br.jar")
// public class GertecPrt800 extends AndroidNonvisibleComponent implements Component {
//     private IGEDI iGedi = null;
//     private Typeface typeface;
//     private IPRNTR iPrint = null;
//     private GEDI_PRNTR_e_Status status;
//     private GEDI_PRNTR_st_StringConfig stringConfig;
//     private GEDI_PRNTR_st_PictureConfig pictureConfig;
//     private static boolean isPrintInit = false;
//     private final String IMPRESSORA_ERRO = "Impressora com erro.";
//     public static final int VERSION = 1;
//     private ComponentContainer my_container;
//     private int width = 200;
//     private ConfigPrint configPrint;
//     private int height = 200;
//     private String type = "QR_CODE";
//     public static Activity activity;

//     public GertecPrt800(ComponentContainer container) {

//         super(container.$form());
//         this.my_container = container;

//         this.stringConfig = new GEDI_PRNTR_st_StringConfig(new Paint());
//         activity = my_container.$context();
//         startIGEDI();
//     }

//     public void startIGEDI() {
//         Thread t = new Thread(new Runnable() {
//             public void run() {
//                 GEDI.init(my_container.$context());
//                 iGedi = GEDI.getInstance(activity);
//                 iPrint = iGedi.getPRNTR();
//                 try {
//                     Thread.sleep(250);
//                 } catch (InterruptedException e) {
//                     e.printStackTrace();
//                 }
//             }
//         });
//         t.start();
//     }

//     public boolean isImpressoraOK() {

//         if (status.getValue() == 0) {
//             return true;
//         }
//         return false;
//     }

//     @SimpleFunction(description = "Asigna el valor del cateto A. " + "El separador decimal es el punto.")
//     public void ImprimirTexto(String texto) throws Exception {
//         try {
//             this.getStatusImpressora();
//             if (!isImpressoraOK()) {
//                 throw new Exception(IMPRESSORA_ERRO);
//             }
//             sPrintLine(texto);
//         } catch (Exception e) {
//             throw new Exception(e.getMessage());
//         }
//     }

//     @SimpleFunction(description = "Asigna el valor del cateto A. " + "El separador decimal es el punto.")
//     public boolean imprimeBarCode(String texto, String type) throws GediException {
//         try {

//             GEDI_PRNTR_st_BarCodeConfig barCodeConfig = new GEDI_PRNTR_st_BarCodeConfig();
//             // Bar Code Type
//             barCodeConfig.barCodeType = GEDI_PRNTR_e_BarCodeType.valueOf(type);

//             // Height
//             barCodeConfig.height = this.configPrint.getiHeight();
//             // Width
//             barCodeConfig.width = this.configPrint.getiWidth();

//             ImpressoraInit();
//             this.iPrint.DrawBarCode(barCodeConfig, texto);
//             return true;
//         } catch (IllegalArgumentException e) {
//             throw new IllegalArgumentException(e);
//         } catch (GediException e) {
//             throw new GediException(e.getErrorCode());
//         }

//     }

//     @SimpleProperty(description = "Set config")
//     public void setConfigImpressao(ConfigPrint config) {

//         this.configPrint = config;

//         this.stringConfig = new GEDI_PRNTR_st_StringConfig(new Paint());
//         this.stringConfig.paint.setTextSize(configPrint.getTamanho());
//         this.stringConfig.paint.setTextAlign(Paint.Align.valueOf(configPrint.getAlinhamento()));
//         this.stringConfig.offset = configPrint.getOffSet();
//         this.stringConfig.lineSpace = configPrint.getLineSpace();

//         switch (configPrint.getFonte()) {
//             case "NORMAL":
//                 this.typeface = Typeface.create(configPrint.getFonte(), Typeface.NORMAL);
//                 break;
//             case "DEFAULT":
//                 this.typeface = Typeface.create(Typeface.DEFAULT, Typeface.NORMAL);
//                 break;
//             case "DEFAULT BOLD":
//                 this.typeface = Typeface.create(Typeface.DEFAULT_BOLD, Typeface.NORMAL);
//                 break;
//             case "MONOSPACE":
//                 this.typeface = Typeface.create(Typeface.MONOSPACE, Typeface.NORMAL);
//                 break;
//             case "SANS SERIF":
//                 this.typeface = Typeface.create(Typeface.SANS_SERIF, Typeface.NORMAL);
//                 break;
//             case "SERIF":
//                 this.typeface = Typeface.create(Typeface.SERIF, Typeface.NORMAL);
//                 break;
//             default:
//                 this.typeface = Typeface.createFromAsset(this.my_container.$context().getAssets(),
//                         configPrint.getFonte());
//         }

//         if (this.configPrint.isNegrito() && this.configPrint.isItalico()) {
//             typeface = Typeface.create(typeface, Typeface.BOLD_ITALIC);
//         } else if (this.configPrint.isNegrito()) {
//             typeface = Typeface.create(typeface, Typeface.BOLD);
//         } else if (this.configPrint.isItalico()) {
//             typeface = Typeface.create(typeface, Typeface.ITALIC);
//         }

//         if (this.configPrint.isSublinhado()) {
//             this.stringConfig.paint.setFlags(Paint.UNDERLINE_TEXT_FLAG);
//         }

//         this.stringConfig.paint.setTypeface(this.typeface);
//     }

//     private String traduzStatusImpressora(GEDI_PRNTR_e_Status status) {
//         String retorno;
//         switch (status) {
//             case OK:
//                 retorno = "IMPRESSORA OK";
//                 break;

//             case OUT_OF_PAPER:
//                 retorno = "SEM PAPEL";
//                 break;

//             case OVERHEAT:
//                 retorno = "SUPER AQUECIMENTO";
//                 break;

//             default:
//                 retorno = "ERRO DESCONHECIDO";
//                 break;
//         }

//         return retorno;
//     }

//     @SimpleFunction(description = "Verifica o status da impressora")
//     public String getStatusImpressora() throws GediException {
//         try {
//             ImpressoraInit();
//             this.status = this.iPrint.Status();
//         } catch (GediException e) {
//             throw new GediException(e.getErrorCode());
//         }

//         return traduzStatusImpressora(this.status);
//     }

//     private boolean sPrintLine(String texto) throws Exception {
//         // Print Data
//         try {
//             ImpressoraInit();
//             this.iPrint.DrawStringExt(this.stringConfig, texto);
//             return true;
//         } catch (GediException e) {
//             throw new GediException(e.getErrorCode());
//         }
//     }

//     public void ImpressoraInit() throws GediException {
//         try {
//             if (this.iPrint != null && !isPrintInit) {
//                 this.iPrint.Init();
//                 isPrintInit = true;
//             }
//         } catch (GediException e) {
//             e.printStackTrace();
//             throw new GediException(e.getErrorCode());
//         }
//     }

//     @SimpleFunction(description = "Finalizar impressão")
//     public void ImpressoraOutput() throws GediException {
//         try {
//             if (this.iPrint != null) {
//                 this.iPrint.Output();
//                 isPrintInit = false;
//             }
//         } catch (GediException e) {
//             e.printStackTrace();
//             throw new GediException(e.getErrorCode());
//         }
//     }

//     @SimpleFunction(description = "Imprimir Imagem")
//     public boolean imprimeImagem(String uri) throws GediException {

//         int id = 0;
//         Bitmap bmp;
//         try {
//             pictureConfig = new GEDI_PRNTR_st_PictureConfig();
//             // Align
//             pictureConfig.alignment = GEDI_PRNTR_e_Alignment.valueOf(configPrint.getAlinhamento());

//             // Height
//             pictureConfig.height = this.configPrint.getiHeight();
//             // Width
//             pictureConfig.width = this.configPrint.getiWidth();

//             bmp = BitmapFactory.decodeFile(uri);

//             ImpressoraInit();
//             this.iPrint.DrawPictureExt(pictureConfig, bmp);
//             this.avancaLinha(configPrint.getAvancaLinhas());

//             return true;
//         } catch (IllegalArgumentException e) {
//             throw new IllegalArgumentException(e);
//         } catch (GediException e) {
//             throw new GediException(e.getErrorCode());
//         }

//     }

//     @SimpleProperty(description = "Pular Linhas")
//     public void avancaLinha(int linhas) throws GediException {
//         try {
//             if (linhas > 0) {
//                 this.iPrint.DrawBlankLine(linhas);
//             }
//         } catch (GediException e) {
//             throw new GediException(e.getErrorCode());
//         }
//     }

// }