import hashlib

def sha1_encrypt(text):
    sha1_hash = hashlib.sha1()

    sha1_hash.update(text.encode())

    encrypted_text = sha1_hash.hexdigest()

    return encrypted_text

val = "540018406be2c529fdb69ce71b5eff16a4eaa1d8" #This has to be changed to the hash you want to crack

file_path = "/path/to/wordlist" #This has to be changed to point to the wordlist
with open(file_path, "r") as file:
    for line in file:
        for i in range(0,100):
            formatted = "{:02d}".format(i)
            output = line.strip() + formatted
            encrypted_text = sha1_encrypt(output)
            if (encrypted_text == val):
                print(encrypted_text + ":" + output)
            #print(encrypted_text)
            
#text = ""
#encrypted_text = sha1_encrypt(text)


