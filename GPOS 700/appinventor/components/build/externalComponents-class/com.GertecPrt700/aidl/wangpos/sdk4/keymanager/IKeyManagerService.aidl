// IBaseService.aidl
package wangpos.sdk4.keymanager;

// Declare any non-default types here with import statements

interface IKeyManagerService {
    void setPackageName(String packageName);
    int updateKeyEx(in int KeyType, in int EncryptKeyType, in byte[] CertData,
                      in byte[] key, in boolean isCheck, in int checkvallen, in byte[] checkval,
                      in String packageName, in int specifyId);

    int updateDeviceKeyEx();
    int updateKeyWithAlgorithm(in int keyType, in int algorithm, in int encryptKeyType, in byte[] certData,
                               in byte[] key, in boolean isCheck, in int checkvallen,
                               in byte[] checkval, in String packageName, in int specifyId);

    int erasePED();
    int checkKeyExist(in String packageName, in int keytype);

    //终端安全
    String pinpadGetTransmitKey();
    int pinpadUpdateMasterKey(int keyIndex,String masteKeyData);
    int UpdateWorkingKey(int MKIndex,int TDKIndex,int TDKLen,in byte[] TDKData,
                         in byte[] TDKChv,int MAKIndex,int MAKLen,in byte[] MAKData,in byte[] MAKChv,int PIKIndex,int PIKLen,in byte[] PIKData,in byte[] PIKChv);

    int InjectKTK(int AlgorithmType, int KeyType, int KeyIndex, int ProtectKeyType, int ProtectKeyIndex,int KeyLength,  in byte[] KeyData, int InputChecksumLength, in byte[] InputChecksum, int OutputShecksumLength,
                      int KTKLength, in byte[] KTKData, int KTKChecksumLength, in byte[] KTKChecksum, out byte[] OutputShecksum,String packageName);
    int InjectIKSN(String packageName, int IKSNLength, in byte[] IKSNData);
    int GetKSN(String packageName, out byte[] outData, out int[] outDataLen);
    int IncreaseKSN(String packageName);

    int UpdateKeyEx_br(int KeyType, String packageName, int EncryptKeyType, in byte[] CertData,
                                in byte[] key, int checkvallen, in byte[] checkval,boolean isCheck,in int specifyId);
    int updateKeyEx_ByOtherKeyName(in int KeyType, in int EncryptKeyType, in byte[] CertData,
                           in byte[] key, in boolean isCheck, in int checkvallen, in byte[] checkval,
                           in String packageName,in String otherPackageName, in int specifyId);
    int updateKeyWithAlgorithm_ByOtherKeyName(in int keyType, in int algorithm, in int encryptKeyType, in byte[] certData,
                                                          in byte[] key, in boolean isCheck, in int checkvallen,
                                                          in byte[] checkval, in String packageName,in String otherPackageName, in int specifyId);

    int Get_keyKCV(in String packageName, in int keyType, int specifyId,out byte[] outData,out int[] outDataLen);

    int generateRSAKeyTest(in int indexProcessMode, in int keyIndex, in int keyLen, out byte[] outData,out int[] outDataLen);

    int performRSAOperationTest(in int keyType, in int arithmeticType, in int fillMode, in int inDataLen, in byte[] inData, out byte[] outData,out int[] outDataLen);
}
