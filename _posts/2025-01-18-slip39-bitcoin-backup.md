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

As a Bitcoin holder, securing my assets was a priority. Moving them off an exchange into a cold wallet gave me full control—but it also raised a critical question: how could I create a backup solution that was secure, durable, and accessible to my family if needed?.

This article will describe first why I decided on creating a 3-of-5 SLIP39
steel washer wallet and then a step-to-step description of how to do this best.

## Why SLIP39
Balancing strong security with practical redundancy was my top priority. After all, I wanted my funds
to be accessible to my family or trusted people if something were to happen to me.
I didn’t want a backup plan that was too complicated or that could leave them locked out of the funds.
So, I needed a solution that would balance security with accessibility, and after
some research, I found that SLIP39 seemed to offer the right balance for my needs.

### Mutlisig vs SLIP39
Some people would argue, that multisig is more secure than SLIP39 backup, because you don't have to trust
a single hardware wallet. Even if one of your signing devices is compromised you would still be safe.

The downside to this is, that (at least at the moment) the setup is way more complex, and you also have to back up all the xpubs of the signers.

Ultimately, I chose SLIP39 for its balance of simplicity, security, and accessibility, especially given my desire to ensure trusted individuals could access the funds if needed.

### What I wanted to be protected against by my backup solution
While of course a compromised hardware wallet is theoretically a possibility how you might lose your funds, in practice the following cases are far more likely to cause a loss.

- Setting up the backup incorrectly
- Someone steals your seed backup (without passphrase)
- Forgetting the passphrase (if wallet is secured with passphrase)
- Destruction of seed backup

### Solution
The solution I went for is a 3-of-5 SLIP39 backup. Each share stored geographically apart with people I trust.
I won't use a passphrase because a thief cannot extract any information about the key from
a single share. The people that I trust with the shares are chosen that they don't know the others,
but that they would probably find together for example in the case of my sudden death.

The obvious downside to this are the costs. Some commercial steel plate solutions for hardware wallets come with some hefty price tags. With the 3-of-5 setup you even have to multiply that price *five times*. So to make the whole thing affordable I decided to put the shares on steel washer wallets.

## Creating the physical backup
### Finding the right washers
It might seem strange to start with the washers, but we will be 3D-printing the stamping jig to be exactly matching the
washers. The default sizes from the excellent article [Make your cold wallet with washers](https://blockmit.com/english/guides/diy/make-cold-wallet-washers/) are M8 D25mm (thickness 2 mm) washers. I had a hard time to find those, and in the end had to order online instead of just going to the hardware store. But these dimensions work well and the washers you look for should be in that ballpark.

> You really want to go for **stainless steel washers**. There are different qualities: A2 (also named 304) and A4 (also named 316). The A4 one is even more resistant to acids and salt water. That way they are sometimes also named "marine" steel.
{: .prompt-warning }

The *thickness* decides if you can stamp the washers from one or two sides. The 2 mm ones that I got allowed it to easily stamp from both sides. I wouldn't do that on any washers that are thinner though. Stamping from both sides reduces the absolute number of moving parts with your backup. The downside is that you have to be a little more careful to get the numbering right when stamping.

### Buying the stamping letters
If you stayed near the default washer dimensions (M8 D25mm) you can go by the standard stamping letters. The size of letters is often described as 3-4 mm but the important part are the dimensions of the pens which should be like 6x6mm. If you have different dimensions, you also need to customize the 3d print of the stamping jig (next section).

> I went with the [cheapest stamping letter kit](https://a.co/d/hcblRlv) for around €14, but I really wished I would have spent the €10 more to get a [kit with the nice labeled wood box](https://a.co/d/c6WrMEw). You are going to stamp a lot of words, and it is really hard to find the correct stamps because the letters are so tiny. For ease of use, especially if you’re new to stamping, consider investing in a better-quality kit with clear labeling. It will save you time and frustration during the stamping process.
{: .prompt-tip }

## Customizing the 3D printed stamping jig
Next step is 

## Creating the word lists
SLIP39 was created by *SatoshiLabs*. So their newer Trezor Models (starting with Trezor Safe 3) have the SLIP39 single share backup scheme selected as the default. You can choose "Multi-Share Backup" right below.

Then you can select the number of shares and the threshold which is needed to recover the wallet.

Carefully write down all the 20 words of each share on
---

## Why I Skipped the Passphrase

Adding a passphrase is an optional extra layer of security. But for me, it added complexity I didn’t want. If I forgot the passphrase, I’d lose access to my Bitcoin, even with all my shares intact.

I decided simplicity was more important. A strong SLIP39 setup already gives me confidence that my backup is secure without the risk of locking myself out.

---

## How to Make a Washer Wallet

A washer wallet is a DIY, metal-based storage solution. It’s fireproof, waterproof, and affordable. Here’s how I made mine.

### Step 1: Gather Materials
- **Washers**: Get stainless steel ones for durability. I used 1-inch washers, but pick a size that fits your needs.
- **Letter stamps**: Look for a set with well-organized casing for easy use. A 3 mm or 4 mm size works well for washers.
- **Tools**: You’ll need a Vorschlaghammer (a big hammer) and an anvil (or something solid to stamp on).

### Step 2: Design the Stamping Template
- Download the **Blockmit parameterized tool** from Thingiverse. This lets you create a stamping guide that matches your washers and stamps.
- Use FreeCAD to customize the template and export the STL files.

### Step 3: Start Stamping
- Print the template using a 3D printer to align the stamps perfectly on the washers.
- Place the washer on the anvil, align the stamp, and give it a solid hit with the hammer. Practice on a scrap washer first to get the hang of it.
- Make sure each stamped letter is clean and legible.

### Step 4: Store Your Shares Safely
- Use fireproof and waterproof containers for storing your washers. Ammo boxes or steel tins work well.
- Distribute the shares across multiple locations (e.g., home, safe deposit box, or with trusted people). Make sure you can track where they are without being too obvious.

---

## Practical Tips for First-Timers

- **Practice first**: Use a few scrap washers to perfect your stamping technique before working on your final shares.
- **Test your setup**: Before stamping, test your SLIP39 shares by doing a recovery to make sure everything works as expected.
- **Use good tools**: Quality stamps and a solid hammer/anvil setup make a big difference in your results.
- **Resources**: Check out FreeCAD tutorials, the Blockmit Thingiverse page, and SLIP39 recovery guides.

---

That’s it! A SLIP39 backup with a washer wallet is secure, durable, and doesn’t break the bank. If you’ve been thinking about upgrading your Bitcoin backup game, give it a try. It’s surprisingly satisfying to do this yourself—and your future self will thank you.
