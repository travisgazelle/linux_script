## linux_script

A menu-driven shell program that allows the user to:

  - Open a file to encrypt/decrypt
  - Type in a message to encrypt/decrypt
  - Create new output file of transformed message

This 'encryption' is Caesar Cipher and ROT13.
  - Caesar Cipher: "In cryptography, a Caesar cipher, also known as Caesar's cipher, 
    the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most 
    widely known encryption techniques. It is a type of substitution cipher in which each 
    letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet."
    (<a href="https://en.wikipedia.org/wiki/Caesar_cipher"> Wikipedia </a>)
    
  - ROT13: "ROT13 ("rotate by 13 places", sometimes hyphenated ROT-13) is a simple letter 
    substitution cipher that replaces a letter with the 13th letter after it in the alphabet. 
    ROT13 is a special case of the Caesar cipher which was developed in ancient Rome."
    (<a href="https://en.wikipedia.org/wiki/ROT13"> Wikipedia </a>)
    
There are three menu options, to read a file, type a file or quit. If the user reads a file, they must enter the file name. The file name is read and displayed on screen. The are next asked if they wish to use Caesar cipher or ROT13. If Caesar cipher is chosen, they must enter an integer to reference the number of shifts required. They are prompted to choose to encrypt or decrypt. For the decrypt to work, the user must know and re-enter the same value used to encrypt the message. After the message is encrypted or decrypted, the user is asked to enter an output file name. The file is created and the contents are displayed. 
