∇ main
  action ← ⎕← 'Enter 1 to encrypt or 2 to decrypt: '

  ⍝ 암호화
  :If action = 1
    message ← ⎕← 'Enter the plaintext message: '
    key ← ⎕← 'Enter the encryption key: '
    encryptedMessage ← xorEncrypt message; key
    ⎕← 'Encrypted Message:', encryptedMessage

  ⍝ 복호화
  :ElseIf action = 2
    encryptedMessage ← ⎕← 'Enter the encrypted message: '
    key ← ⎕← 'Enter the decryption key: '
    decryptedMessage ← xorDecrypt encryptedMessage; key
    ⎕← 'Decrypted Message:', decryptedMessage

  :Else
    ⎕← 'Invalid input. Please enter 1 or 2.'

  :End
∇

∇ encrypted ← xorEncrypt message; key
  message ← message⍳'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
  key ← key⍳'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
  encrypted ← message⍺~⊃(message≠key)/key
∇

∇ decrypted ← xorDecrypt encrypted; key
  encrypted ← encrypted⍳'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
  key ← key⍳'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
  decrypted ← encrypted⍺~⊃(encrypted≠key)/key
∇

main
