# SSH

## Usage

The private key must be kept secret. The public key can be shared with anyone.

To enhance security, the private key can be encrypted with a passphrase.

### Generate SSH key

```
ssh-keygen -t ed25519 -a 420 -f "name" -C "Service e-mail"
```
- -t ed25519: This specifies the type of key to be generated, in this case, "ed25519" which refers to the Edwards-curve Digital Signature Algorithm (EdDSA) with a curve25519 elliptic curve. It's a modern and secure algorithm for SSH key pairs.

- -a 420: This sets the number of key derivation function rounds. Higher values increase the time it takes to generate the key pair, making brute-force attacks more difficult. The value of 420 seems quite high and is likely chosen for enhanced security.

- -f "name": This specifies the filename for the generated key. In this case, the name of the key pair files will be "name" (e.g., "name.pub" for the public key and "name" for the private key). It's a good practice to choose a descriptive name that relates to the purpose of the key.

- -C "Service e-mail": This adds a comment to the key. The comment can be used to identify the key's purpose or owner. In this case, the comment is set to "Service e-mail," which suggests that the key may be used for some service-related authentication.


### Transfer public key to server

```
ssh-copy-id -i ~/.ssh/id_rsa.pub YOUR_USER_NAME@IP_ADDRESS_OF_THE_SERVER
```


## Config file

- Location: `~/.ssh/config`
- Example:
```
Host github.com
        User git
        Hostname github.com
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/id_rsa_github
        AddKeysToAgent yes     
```
- [Full Example](./config-example)

## Host system SSH Clients


### KDE

[https://kcore.org/2022/05/18/ssh-passphrases-kde/] kde tutorial

### Windows

In Windows there is the "OpenSSH Authentication Agent" built in.

To enable it, goto Services and change the service "OpenSSH Authentication Agent" to automatic and start it.

#### Git integration

When installing git bash, choose use external ssh client.

## Important to know

- SSH config file gets interpreted from start to end.
- If multiple configs matching, all are tested until a config is successful.
  -  This could result in server block, because of too many requests

