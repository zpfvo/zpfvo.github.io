---
layout: post
title: "Practicalities of Creating a SLIP39 Backup for Your Bitcoin Wallet"
date: 2025-01-18
categories: bitcoin diy
published: false
tags:
    - bitcoin
    - diy
---

As a Bitcoin holder, securing my assets was a top priority. Moving them off an exchange into a cold wallet gave me full control—but it also raised a critical question: how could I create a backup solution that was secure, durable, and accessible to my family if needed?

This article describes why I decided to create a 3-of-5 SLIP39 steel washer wallet and provides a step-by-step guide to doing this effectively.

## Why SLIP39
Balancing strong security with practical redundancy was my main goal. After all, I wanted my funds to be accessible to my family or trusted individuals if something happened to me.

I didn’t want a backup plan that was too complicated or that could leave them locked out of the funds. After some research, I found that SLIP39 offered the right balance between security and accessibility.

### Multisig vs SLIP39
Some might argue that multisig setups are more secure than SLIP39 backups because you don’t have to rely on a single hardware wallet. Even if one of your signing devices is compromised, your funds would still be safe.

The downside is that multisig setups are currently far more complex, and you also have to back up the xpubs of all the signers.

Ultimately, I chose SLIP39 for its simplicity, security, and accessibility, especially given my desire to ensure trusted individuals could access the funds if needed.

### Threats Addressed by My Backup Solution
While a compromised hardware wallet is a theoretical risk, I wanted to protect against more likely scenarios, including:

- Incorrectly setting up the backup
- Theft of the seed backup (without a passphrase)
- Forgetting the passphrase (if the wallet is secured with one)
- Destruction of the seed backup

### My Solution
I decided on a 3-of-5 SLIP39 backup, with each share stored in geographically separate locations and entrusted to people I trust. I opted not to use a passphrase because a thief cannot extract any useful information from a single share. The people I entrusted with the shares do not know each other, but they would likely connect in the event of my sudden death to reconstruct the wallet, and they will be able to do so without a passphrase.

Using SLIP39 has also the benefit of being implemented into the UX of the Trezor wallets (and also Keystone wallets, and some other software wallets) which helps setting up the backup, thus preventing mistakes that might make it impossible to restore your wallet.

The main downside to this approach is the cost. Some commercial steel plate solutions for hardware wallets come with hefty price tags, and with a 3-of-5 setup, you need five plates. To make it more affordable, I decided to store the shares on steel washer wallets.

## Creating the Physical Backup
### Finding the Right Washers
It might seem strange to start with the washers, but we’ll be 3D-printing a stamping jig to match the washers’ size exactly.

The default sizes recommended in the excellent article [Make Your Cold Wallet with Washers](https://blockmit.com/english/guides/diy/make-cold-wallet-washers/) are M8 D24 mm (thickness 2mm) washers. I had trouble finding these locally and ended up ordering them online. These dimensions work well, so aim for washers in this ballpark.
> **Tip:** Always choose **stainless steel washers.** They come in two main grades: A2 (also called 304) and A4 (also called 316). A4 is more resistant to acids and saltwater, which is why it’s sometimes referred to as "marine steel."
{: .prompt-warning }

The *thickness* of the washers determines whether you can stamp both sides. The 2mm washers I used worked well for stamping on both sides. I wouldn’t recommend doing this with thinner washers, because I could already see some tiny bumps on the backside site of a stamped word, when I used a lot of force (two sided stamping was still no problem, though). Stamping on both sides reduces the total number of washers needed, but you’ll need to carefully track the numbering when stamping.

### Buying the Stamping Letters
If you stick to the default washer dimensions (M8 D24mm), standard stamping letters will work fine. These are usually described as 3-4mm in size, but the critical measurement is the pen dimensions, which should be about 6x6mm. If your washers or the stamping pens have different dimensions, you’ll need to customize the 3D print for the stamping jig in the next step.

> **Personal Experience:** I bought the [cheapest stamping letter kit](https://a.co/d/hcblRlv) for around €14, but I wish I’d spent an extra €10 for a [kit with a labeled wooden box](https://a.co/d/c6WrMEw). You’ll be stamping a lot of letters, and the tiny size makes it hard to find the right stamp quickly. For ease of use, especially if you’re new to stamping, I recommend investing in a better-quality kit with clear labeling to save time and frustration.
{: .prompt-tip }


## Customizing the 3D printed stamping jig
Next step is
