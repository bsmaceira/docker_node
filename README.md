# 🐳 docker_node

A beginner-friendly, Ubuntu-based Docker image preloaded with:
- 🟢 Node.js 22.x (via NodeSource)
- ✏️ Nano text editor
- 🔗 Git for version control

Perfect for learning, prototyping, and developing in a clean CLI-based Node.js environment.

---

## 💡 What is This?

This repository contains a `Dockerfile` — a recipe that builds a virtual machine-like environment using Docker. It’s great for:
- Trying out Node.js without installing it locally
- Creating a clean dev space with nano and git
- Learning Docker in a no-stress, no-frills way

This is NOT the official docker-node image, head to [docker-node](https://github.com/nodejs/docker-node) instead for that one, this version is just a personal project designed to be beginner-friendly, with Git and Nano pre-installed and a simple, easy-to-understand setup. Great for those who want to quickly dive into Docker and Node.js without worrying about configuring everything from scratch.
It’s heavier than standard Node images (~440MB), but trades performance for ease of use and familiar tooling.

---

## 📦 What's Inside?

| Tool     | Purpose                      |
|----------|------------------------------|
| Ubuntu   | Base Linux operating system  |
| Node.js  | JavaScript runtime engine    |
| npm      | Node.js package manager      |
| Nano     | Command-line text editor     |
| Git      | Version control system       |

---

## 🚀 Getting Started

### ⚙️ 1. Prerequisites

- 🐳 Install [Docker](https://docs.docker.com/get-docker/)
- 💻 Use terminal/bash (on Linux/macOS) or PowerShell (on Windows)

---

### 🧱 2. Clone This Repo

```bash
git clone https://github.com/bsmaceira/docker_node.git
cd docker_node
```

---

### 🔧 3. Build the Docker Image

```bash
docker build -t docker_node:1.0 .
```

This reads the `Dockerfile` and builds your image locally.

---

### 🧑‍💻 4. Run the Container

```bash
docker run -it --hostname docker-node docker_node:1.0
```

Now you’re inside your custom Ubuntu container, with Node.js and tools ready!

---

## 🎓 Try It Out!

Create a test file:
```bash
nano test.js
```

Paste this in:

```js
console.log("Hello from inside Docker!");
```

Save with `Ctrl+O`, exit with `Ctrl+X`, then run:
```bash
node test.js
```

---

## 🙋 FAQ

**Q: Can I install more tools later?**  
✅ Yes — use `apt install <tool>` inside the container.

**Q: Do my changes persist between container sessions?**  
🚫 By default, no. Use Docker volumes or commit changes to a new image.

**Q: Can I turn this into a full web server?**  
🧱 Absolutely! Install `express`, map ports, and start building.

---

## 🛠️ Want to Customize?

You can modify the `Dockerfile` to:
- Add libraries like Express, MongoDB, etc.
- Include VS Code Server for browser-based coding
- Automatically install packages on build

---

## 📬 Contributions & Feedback

Pull requests and suggestions welcome! Whether you’re learning or leveling up, feel free to fork, remix, and build.

---

