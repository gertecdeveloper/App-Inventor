package com.ConfigPrint;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.*;

@DesignerComponent(version = ConfigPrint.VERSION, description = "Configuração impressão", category = ComponentCategory.EXTENSION, nonVisible = true, iconName = "")
@SimpleObject(external = true)
public class ConfigPrint extends AndroidNonvisibleComponent implements Component {
    public static final int VERSION = 1;
    private String fonte = "NORMAL";
    private String alinhamento;
    private int tamanho;
    private int offSet;
    private int iHeight;
    private int iWidth;
    private int lineSpace;
    private boolean negrito;
    private boolean italico;
    private boolean sublinhado;
    private int avancaLinhas;

    public ConfigPrint(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.fonte = "NORMAL";
        this.alinhamento = "CENTER";
        this.tamanho = 20;
        this.offSet = 0;
        this.iHeight = 700;
        this.iWidth = 430;
        this.lineSpace = 0;
        this.negrito = true;
        this.italico = true;
        this.sublinhado = false;
        this.avancaLinhas = 0;
    }

    @SimpleProperty(description = "Getter Fonte")
    public String getFonte() {
        return fonte;
    }

    @SimpleProperty(description = "Settar Fonte")
    public void setFonte(String fonte) {
        this.fonte = fonte;
        switch (fonte) {
            case "NORMAL":
                break;
            case "DEFAULT":
                break;
            case "DEFAULT BOLD":
                break;
            case "MONOSPACE":
                break;
            case "SANS SERIF":
                break;
            case "SERIF":
                break;
            default:
                setFont(fonte);
        }
    }

    @SimpleProperty(description = "Getter Alinhamento")
    public String getAlinhamento() {
        return alinhamento;
    }

    @SimpleProperty(description = "Settar Alinhamento")
    public void setAlinhamento(String alinhamento) {
        this.alinhamento = alinhamento;
    }

    @SimpleProperty(description = "Getter Tamanho")
    public int getTamanho() {
        return tamanho;
    }

    @SimpleProperty(description = "Settar Tamanho Impressão")
    public void setTamanho(int tamanho) {
        this.tamanho = tamanho;
    }

    @SimpleProperty(description = "Getter OffSet")
    public int getOffSet() {
        return offSet;
    }

    @SimpleProperty(description = "Settar OffSet")
    public void setOffSet(int offSet) {
        this.offSet = offSet;
    }

    @SimpleProperty(description = "Getter Espaço linhas")
    public int getLineSpace() {
        return lineSpace;
    }

    @SimpleProperty(description = "Settar Espaço Linhas")
    public void setLineSpace(int lineSpace) {
        this.lineSpace = lineSpace;
    }

    @SimpleProperty(description = "Settar Fonte")
    private void setFont(String fonte) {
        this.fonte = "fonts/" + fonte;
    }

    @SimpleProperty(description = "Getter Height Impressão BarCode/Imagem")
    public int getiHeight() {
        return iHeight;
    }

    @SimpleProperty(description = "Setter Height Impressão BarCode/Imagem")
    public void setiHeight(int iHeight) {
        this.iHeight = iHeight;
    }

    @SimpleProperty(description = "Getter Width Impressão BarCode/Imagem")
    public int getiWidth() {
        return iWidth;
    }

    @SimpleProperty(description = "Setter Width Impressão BarCode/Imagem")
    public void setiWidth(int iWidth) {
        this.iWidth = iWidth;
    }

    @SimpleProperty(description = "Getter Negrito Situação")
    public boolean isNegrito() {
        return negrito;
    }

    @SimpleProperty(description = "Setter Negrito Situação")
    public void setNegrito(boolean negrito) {
        this.negrito = negrito;
    }

    @SimpleProperty(description = "Getter Italico Situação")
    public boolean isItalico() {
        return italico;
    }

    @SimpleProperty(description = "Setter Italico Situação")
    public void setItalico(boolean italico) {
        this.italico = italico;
    }

    @SimpleProperty(description = "Getter Sublinhado Situação")
    public boolean isSublinhado() {
        return sublinhado;
    }

    @SimpleProperty(description = "Setter Sublinhado Situação")
    public void setSublinhado(boolean sublinhado) {
        this.sublinhado = sublinhado;
    }

    @SimpleProperty(description = "Getter Quantidade linhas puladas")
    public int getAvancaLinhas() {
        return avancaLinhas;
    }

    @SimpleProperty(description = "Setter número pulo linhas")
    public void setAvancaLinhas(int avancaLinhas) {
        this.avancaLinhas = avancaLinhas;
    }
}
