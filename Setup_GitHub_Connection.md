# GitHub Setup for MATLAB and Arduino

## 1️⃣ Install and Verify Git
```bash
git --version
```

## 2️⃣ Configure Git User Info
```bash
git config --global user.name "abiodun6948"
git config --global user.email "emmanuel.abioye@reedleycollege.edu"
```

## 3️⃣ Generate SSH Key
```bash
ssh-keygen -t ed25519 -C "emmanuel.abioye@reedleycollege.edu"
```

## 4️⃣ Copy and Add SSH Key to GitHub
```bash
type $env:USERPROFILE\.ssh\id_ed25519.pub
```

Then add it under **GitHub → Settings → SSH and GPG Keys → New SSH Key**

## 5️⃣ Verify Connection
```bash
ssh -T git@github.com
```

## 6️⃣ Create and Push Repository
```bash
git init
git remote add origin git@github.com:abiodun6948/ENGR5_DHT22_Arduino_MATLAB_ThingSpeak.git
git add .
git commit -m "Initial commit - DHT22 project for ENGR5"
git push -u origin main
```
