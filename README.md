# Terminal Journal

> **Disclaimer:** This script was designed for macOS. It will not work natively on Windows without adaptation. For Windows, consider using Git Bash, WSL, or rewriting the script in PowerShell.

This repository contains a simple shell script (`journal.sh`) for maintaining a personal journal directly from your terminal. The script is designed to help you quickly jot down notes, thoughts, or logs, and automatically commit and push your entries to a private GitHub repository for secure, version-controlled storage. It was originally a pet project of mine to learn how to use Bash a little better.

## Features
- Append journal entries from the terminal
- Automatic git commit and push after each entry
- Keeps your journal private and backed up

---

## Getting Started

### 1. Clone or Download the Script
Clone this repository or copy the `journal.sh` script to your preferred location:

```sh
git clone <your-private-repo-url>
cd <repo-folder>
```

Or, download `journal.sh` and place it in a directory of your choice (e.g., `~/bin` or `/usr/local/bin`).

### 2. Set Up a Private GitHub Repository
1. Go to [GitHub](https://github.com/) and create a new **private** repository.
2. Clone the repository to your local machine:
   ```sh
   git clone git@github.com:<your-username>/<your-private-repo>.git
   cd <your-private-repo>
   ```
3. Place `journal.sh` in this folder.

### 3. Connect Your Private Repo to your Local Machine
1. Open a terminal and navigate to your private repository folder.
2. Run the following command to initialize a new Git repository:
   ```sh
   git init
   ```
3. Add the remote origin (your GitHub repository):
   ```sh
   git remote add origin git@github.com:<your-username>/<your-private-repo>.git
   ```

---

## Usage

### 1. Make the script executable
```sh
chmod +x journal.sh
```


### 2. (Optional) Create a `~/bin` Directory

If you prefer to keep scripts in your home directory, create `~/bin` and add it to your `$PATH`:

```sh
mkdir -p ~/bin
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc  
source ~/.zshrc  
```

### 3. Add `journal` to your PATH

To run `journal` from anywhere, move the script to a directory in your `$PATH` (e.g., `/usr/local/bin` or `~/bin`):

```sh
cp journal.sh /usr/local/bin/journal
```

Now you can simply type `journal` in your terminal from any location.

### 4. Run the script

```sh
journal
```

Follow the prompts to add your journal entry. The script will automatically commit and push your changes to your private GitHub repository.

### 5. Example

```sh
journal
```

```sh
2025-08-10 16:32:12 Enter your journal entry.
Tip: Press CTRL+D when you're done writing. May require to press CTRL+D twice, if not ending on a new line.
-------------------------------------------------------------
This is an example journal entry.
```

---