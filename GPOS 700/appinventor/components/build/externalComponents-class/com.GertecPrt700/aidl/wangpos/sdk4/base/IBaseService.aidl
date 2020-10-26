// IBaseService.aidl
package wangpos.sdk4.base;

import wangpos.sdk4.base.ICallbackListener;
import wangpos.sdk4.base.ICommonCallback;
import wangpos.sdk4.base.IDecodeCallback;
// Declare any non-default types here with import statements

interface IBaseService {
    //BankCard function
    int piccDetect();

    int iccDetect();

    int readCard(in byte CardType,
                 in int CardMode,
                 in int TimeOut,
                 out byte[] Data,
                 out int[] retlen2,
                 String packageName);

    int sendAPDU(in int cardType,
                 in byte[] indata,
                 in int inlen,
                 out byte[] outdata,
                 out int[] outlen);

    int getCardSNFunction(out byte[] outdata,
                          out int[] len);

    int openCloseCardReader(in int readertype,
                            in int operation);

    int cardReaderDetact(in int cardtype,
                         in int readertype,
                         in int cardmode,
                         out byte[] outdata,
                         out int[] datalength,
                         String packageName);

    int readContactlessInfo(out byte[] outdata,
                            out int[] outlength);

    //Dock function
    int test();

    int pictureSend(in byte[] send_data,
                    in int len);

    int status(out byte[] read_data,
               out int[] len);

    int updateStart(in byte[] send_data,
                    in int len);

    int updateResult(out byte[] read_data,
                     out int[] len);

    int version(out byte[] read_data,
                out int[] len);


    //IDCard function
    int piccGetCardSN(out byte []data,
                      out int []len);

    int idcDetect();

    int sendApdu(in int cardType,
                 in byte[] indata,
                 in int inlen,
                 out byte[] outdata,
                 out int[] outlen);

    int readIDCard(in byte CardType,
                   in int CardMode,
                   in int TimeOut,
                   out byte[] Data,
                   out int[] retlen2,
                   String packageName);

    int icsLotPower(in int slottype,
                    in int operationtype,
                    in int time,
                    out byte[] ATRData,
                    out int[] ATRLen);

    int openCloseIDCardReader(in int readertype,
                              in int operation);

    int iDCardReaderDetact(in int cardtype,
                           in int readertype,
                           in int cardmode,
                           out byte[] outdata,
                           out int[] datalength,
                           String packageName);

    //Printer function
    int getPrinterStatus(out int[] status);

    int printInit ();

    int printPaper(in int step);

    int printFinish();

    int printString(in String content,
                    in int fontSize,
                    in int align,
                    in boolean isBold,
                    in boolean isItalic);

    int printStringExt(in String content,
                        in int leftOffset,
                        in float letterWidth,
                        in float lineSpacing,
                        in int font,
                        in int fontSize,
                        in int align,
                        in boolean isBold,
                        in boolean isItalic,
                        in boolean isUnderLine);

    int printStringBase(in String content,
                        in int leftOffset,
                        in float letterWidth,
                        in float lineSpacing,
                        in int fontSize,
                        in int align,
                        in boolean isBold,
                        in boolean isItalic,
                        in boolean isUnderLine);

    int printImage(in Bitmap bitmap,
                   in int height,
                   in int align);

    int printImageBase(in Bitmap bitmap,
                       in int width,
                       in int height,
                       in int align,
                       in int offset);

    int printBarCode(in String barCode,
                     in int height,
                     in boolean displayCode);

    int printBarCodeBase(in String barCode,
                         in int barCodeType,
                         in int barWidth,
                         in int height,
                         in int offset);

    int printQRCode(in String qrCode);

    //Core function
    int getDateTime(out byte[] datetime);

    int setDateTime(in byte[] datetime);

    int readSN(out byte[] SN,
               out int[] length);

    int getBatteryLevel(out byte[] BatteryLevel);

    int getTamper(out byte[] result,
                  out int[] length);

    int enableTamper(out byte[] result,
                     out int[] length);

    int getDevicesVersion(out byte[] DevicesVersion,
                          out int[] length);

    int getGMStatus(out byte[] GM,
                    out int[] length);

    int breakOffCommand();

    int writeCallBackData(in byte[] CallBackData,
                          in int length);

    int writeCallBackDataWithCommandID(in int CommandID,
                                       in byte[] CallBackData,
                                       in int length);

    int buzzer();

    int buzzerEx(int beeptime);

    int led(in int Led1,
            in int Led2,
            in int Led3,
            in int Led4,
            in int open);

    int startPinInput(in int timeouttime,
                      in String packageName,
                      in int supportbypass,
                      in int pinlenmin,
                      in int pinlenmax,
                      in int pinblockformat,
                      in byte[] formatdata,
                      in int panlen,
                      in byte[] pandata,
                      ICallbackListener emvcallback);

    int pinPadRotation();

    int writeSN(in byte[] sn ,
                in int len);

    int dataEnDecrypt(in byte[] pbindata,
                      in int pwInLen,
                      out byte[] pbOut,
                      out int[] pwOutLen);

    int getMac(in byte[] pbindata,
               in int indatalen,
               out byte[] pbOutdata,
               out int[] pbOutdataLen);

    int genereateRandomNum(in int length,
                           out byte[] randombytes);

    int dataEnDecryptEx(in int algorithmFlag,
                        in int operationmode,
                        in String pkgname,
                        in int encryptmode,
                        in int vectorlen,
                        in byte[] vectordata,
                        in int datalen,
                        in byte[] datain,
                        in int pddmode,
                        out byte[] pbOut,
                        out int[] pwOutLen);

    int dataEnDecryptDeviceEx(in byte algorithmFlag,
                                  in int operationmode,
                                  in int keyIndex,
                                  in int encryptmode,
                                  in int vectorlen,
                                  in byte[] vectordata,
                                  in int datalen,
                                  in byte[] datain,
                                  in int pddmode,
                                  out byte[] pbOut,
                                  out int[] pwOutLen);

    int getMacEx(in String pkgname,
                 in int vectorlen,
                 in byte[] vectordata,
                 in int datalen,
                 in byte[] data,
                 in int macmode,
                 out byte[] pbOutdata,
                 out int[] pbOutdataLen);

    int getMacWithAlgorithm(in String pkgname,
                            in int algorithm,
                            in int vectorlen,
                            in byte[] vectordata,
                            in int datalen,
                            in byte[] data,
                            in int macmode,
                            out byte[] pbOutdata,
                            out int[] pbOutdataLen);

    //Updatesp function
    int updatesp(in String spFileName);
    String[] getStatus();

    int m1CardKeyAuth(in int keytype,
                       in int blocknum,
                       in int keylen,
                       in byte[] key,
                       in int SNlen,
                       in byte[] SN,
                       out byte[] outdata,
                       out int[] datalen);

    int m1CardReadBlockData(in int blocknum,
                                 out byte[] outdata,
                                 out int[] datalen);

    int m1CardWriteBlockData(in int blocknum,
                                  in int indatalen,
                                  in byte[] indata ,
                                  out byte[] outdata,
                                  out int[] datalen);

    int m1CardValueOperation(in int opertype,
                                  in int operblocknum ,
                                  in int operamount,
                                  in int operwritblocknum,
                                  out byte[] outdata,
                                  out int[] datalen);

    int getMacForIPEK  (in String pkgname,
                         in int algorithm,
                         in int vectorlen,
                         in byte[] vectordata,
                         in int datalen,
                         in byte[] data,
                         in int macmode,
                         out byte[] pbOutdata,
                         out int[] pbOutdataLen);

    int dataEnDecryptForIPEK ( in int algorithmFlag,
                                in int operationmode,
                                in String pkgname,
                                in int encryptmode,
                                in int vectorlen,
                                in byte[] vectordata,
                                in int datalen,
                                in byte[] datain,
                                in int pddmode,
                                out byte[] pbOut,
                                out int[] pwOutLen);

    int startPinInputForIPEK (in int timeouttime,
                              in String packageName,
                              in int supportbypass,
                              in int pinlenmin,
                              in int pinlenmax,
                              in int pinblockformat,
                              in byte[] formatdata,
                              in int panlen,
                              in byte[] pandata,
                              ICallbackListener emvcallback);

    int readCardIndex(in byte CardType,
                        in int CardMode,
                        in int TimeOut,
                        out byte[] Data,
                        out int[] retlen2,
                        in int pikIndex,
                        in int makIndex,
                        in int tdkIndex);

    int dataEnDecryptExIndex(in int makIndex,
                              in int algorithmFlag,
                              in int operationmode,
                              in int encryptmode,
                              in int vectorlen,
                              in byte[] vectordata,
                              in int datalen,
                              in byte[] datain,
                              in int pddmode,
                              out byte[] pbOut,
                              out int[] pwOutLen);
    int getMacExIndex(in int makIndex,
                        in int algorithmFlag,
                        in int vectorlen,
                        in byte[] vectordata,
                        in int datalen,
                        in byte[] data,
                        in int macmode,
                        out byte[] pbOutdata,
                        out int[] pbOutdataLen);

    int SerailDebugPort(int onoff, int keep);

    int EmvLib_GetPrintStatus(out byte[] data, out int[] length);

    int print2StringInLine(in String content1,
                            in String content2,
                            in float lineSpacing,
                            in int font,
                            in int fontSize,
                            in int align,
                            in boolean isBold,
                            in boolean isItalic,
                            in boolean isUnderLine);

    int printStringWithScaleX(in String content,
                                in int leftOffset,
                                in float letterWidth,
                                in float lineSpacing,
                                in float scaleX,
                                in int font,
                                in int fontSize,
                                in int align,
                                in boolean isBold,
                                in boolean isItalic,
                                in boolean isUnderLine);

    int clearPrintDataCache();

    int ReadLogicCardData(in int addr, in int len , out byte[] outdata, out int[] datalen);

    int WriteLogicCardData(in byte[] pwd, in int addr, in int indatalen, in byte[] indata, out byte[] outdata, out int[] datalen);

    int ledFlash(int led1, int led2, int led3, int led4, int openTime, int closeTime, int duration);
    int GetSPLog(in int logType, in int offset, out int[] logLength, out byte[] logData);
    // NFC tag read block
    int NFCTagReadBlock(int tagid, out byte[] outdata, out int[] len);
    int NFCTagWriteBlock( in int blockNum,in byte[] indata);
    int SetKernel(int aReserveParam,int setKernel,int bReserveParam);
    int SDK_Printer_Test();
    int clearTamperStatus();

    int printQRCodeByWH(in String qrCode,in String charset,in int width,in int align);

    int printPDF417(in String pdfCode,in int width,in int height,in int align);

    int L1_Contactless_wupa();

    int SetGrayLevel(in int graylevel);

    int Felica_Open(int cardSlotNums, int sysEncode, int respType, out int[] outCardNums, out byte[] outData, out int[] outDataLen);

    int Felica_Transmit(in byte[] inData,  int  inDataLen, out byte[] outData, out int[] outDataLen);

    int blueToothPrintControl(in int command,ICommonCallback callback);

    int BTPrintESCPOS(in byte[] data);

    int SDK_SendData(in byte[] sendData,in int len);

    int SDK_ReadData(out byte[] readData,out int[]len);

    int CardActivation(in int reserveParamOne,in int reserveParamtwo,out byte[] outdata,out int[] outlength);

    String getSystemSn();

    int VerifyLogicCardPwd(in byte[] pwd,out byte[] outdata,out int[] datalen);

    int Get_ClearPrinterMileage(in int status,out byte[] outData);

    int Get_KeySign(in int keyType,in int keyIndex,in int snLen,in byte[] sn,in int timeLen,in byte[] time,out byte[] outData);

    int getSpID(out byte[] outData, out int[] outDataLen);
    //打印中检测卡在位
    int printPaper_trade(in int tradeType,in int step);
    //2018 1 23 wqk 0360
    int DesFire_Auth(in int keyNo, in int keyType,in int keyLen,in byte[] keyData);
    //2018 1 23 wqk 0361
    int DesFire_SelApp(in int aidLen,in byte[] aidData,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 0362
    int DesFire_DelFile(in int fileType,in byte[] aid_fidData,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 0363
    int DesFire_GetCardInfo(in int mode,in int id,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 0364
    int DesFire_ReadFile(in int fileType,in int fileId,in int offset,in int readLen,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 0365
    int DesFire_WriteFile(in int fileType,in int fileId,in int offset,in int writeLen,in byte[] writeData,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 0369 创建应用
    int DesFire_CreatApp(in int fileType,in int keySet,in int keyNo,in byte[] aid_fidData,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 0369 创建标准或备份文件
    int DesFire_CreatFile(in int fileType,in int fileId,in int mode,in byte[] accessData,in byte[] fileSize,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 0369 创建值文件
    int DesFire_CreatValueFile(in int fileType,in int fileId,in int mode,in byte[] accessData,in byte[] limit,in byte[] max,in byte[] value,in int limitCredit,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 0369 创建线性记录文件或循环记录文件
    int DesFire_CreatLine_CycleFile(in int fileType,in int fileId,in int mode,in byte[] accessData,in byte[] recordSize,in byte[] numRecords,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 036A
    int DesFire_Comfirm_Cancel(in int fileType,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 036B
    int DesFire_ValueFileOpr(in int fileType,in int fileId,in byte[] operateValue,out byte[] outData, out int[] outDataLen);
    //2018 1 23 wqk 036C
    int DesFire_ISO7816(in byte[] apdu,out byte[] outData, out int[] outDataLen);
    //2018 1 25 wqk 036E
    int Logic_I2C(in int type,in byte[] inData,out byte[] outData);
    //2018 1 26 wqk 打印自定义字体风格
    void printString_TypeFace(in byte[] type);
    //获取SDK版本号
    String getSDKVersion();
    //2018 2 28 wqk 客户系统标识
    int sendCustomerSystemFlag(in int flag,in int isLog);
    //2018 3.29 wqk
    void setPackageName(String packageName);
    //2018 4 2 wqk(NET5)
    int printerControl(int command, in int printDataLen,in byte[] printData);
    int transmitPSAM(int operate, in byte[] sendData, in int sendDataLen, out byte[] recvData, out int[] recvDataLen);

    //2018 4 10 hs decode mini2 扫码头驱动SDK 初始化
    int mini_decodeInit(IDecodeCallback callback);
    //2018 4 10 hs decode mini2 扫码头驱动SDK 关闭
    int mini_decodeClose();
    //2018 4 10 hs decode mini2 扫码头驱动SDK 单扫
    int mini_decodeStartSingleScan(in int timeout);
    //2018 4 10 hs decode mini2 扫码头驱动SDK 多扫
    int mini_decodeStartMultiScan(in int timeout);
    //2018 4 10 hs decode mini2 扫码头驱动SDK 设置最大多扫数量
    int mini_decodeSetMaxMultiReadCount(in int max);
    //2018 4 10 hs decode mini2 扫码头驱动SDK 连续扫码
    int mini_decodeStartContinuousScan(in int timeout);
    //2018 4 10 hs decode mini2 扫码头驱动SDK 停止扫码
    int mini_decodeStopScan();
    //2018 4 12 hs decode mini2 扫码头驱动SDK 设置照明模式
    int mini_decodeSetLightsMode(in int mode);
    //2018 5 15 wqk
    int Logic_ReadPWDegree(out byte[] outData);
    //2018 5 15 wqk
    int Logic_ModifyPW(in int pwLen,in byte[] pwData);
    //2018 5 22 wqk
    int CLGetVersion(out byte[] version,out int[] versionLen, out byte[] checksum,out int[] checksumLen);
    //2018 5 22 wqk
    int ScrdGetVersion(out byte[] version,out int[] versionLen,out byte[] checksum,out int[] checksumLen);
    //2018 5 24 wqk
    String getFirmWareNumber();
    //2018 09 03 zss
    int M0CardKeyAuth(in byte[] pin, in int pinLen, out byte[] outData, out int[] outDataLen);
    //2018 09 03 zss
    int M0GetSignData(in int addr, out byte[] outData, out int[] outDataLen);
}