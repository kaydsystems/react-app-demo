**Directory Structure:**
```
.
├── Dockerfile
├── Build-script.sh
├── helm/
│   ├── values.yaml
│   └── templates/
│       ├── deployment.yaml
│       ├── service.yaml
│       └── ingress.yaml
├── src/
│   └── App.js
├── public/
│   └── index.html
└── package.json
```

### 4. **Helm Chart**

#### **helm/values.yaml**
```yaml

```

#### **helm/templates/deployment.yaml**
```yaml

```



### **Deployment Process:**
1. **Build Image:**
   ```bash
   chmod +x Build-script.sh
   ./Build-script.sh $(git rev-parse --short HEAD)
   ```

2. **Update Helm Chart Image Tag:**
   ```bash
   sed -i "s/tag:.*/tag: \"$(git rev-parse --short HEAD)\"/" helm/values.yaml
   ```

3. **Push Changes to `deployment-repo`:**
   ```bash
   git add helm/values.yaml
   git commit -m "Update image tag"
   git push
   ```

### **Test Locally:**
```bash
npm install
npm start
```