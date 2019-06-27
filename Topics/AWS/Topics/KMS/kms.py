import boto3

kms = boto3.client('kms')
key_id = 'alias/tempkey'
database_password='c3ab8ff13720e8ad9047dd39466b3c8974e592c2fa383d4a3960714caef0c4f2'
result = kms.encrypt(key_Id=key_id, Plaintext=database_password)
result
decrypt_result = kms.decrypt(CiphetextBlob=encrypted_password)
decrypt_result
decrypt_result['Plaintext']