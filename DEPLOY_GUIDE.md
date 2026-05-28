# 简历部署到 GitHub Pages 指南

## 步骤1: 创建 GitHub 仓库

1. 访问 https://github.com/new
2. 仓库名称填写: `resume` 或 `lynn-resume`
3. 选择 **Public**（公开）
4. 勾选 **Add a README file**
5. 点击 **Create repository**

## 步骤2: 上传简历文件

### 方式A: 网页上传（最简单）
1. 进入刚创建的仓库
2. 点击 **Add file** → **Upload files**
3. 拖拽 `resume.html` 到上传区域
4. 提交信息填写: "Add resume"
5. 点击 **Commit changes**

### 方式B: 命令行上传
```bash
cd /Users/lynnsean/.openclaw/workspace/resume

git init
git add resume.html
git commit -m "Initial resume upload"

# 替换为你的GitHub用户名和仓库名
git remote add origin https://github.com/你的用户名/resume.git
git branch -M main
git push -u origin main
```

## 步骤3: 开启 GitHub Pages

1. 在仓库页面，点击 **Settings**（设置）
2. 左侧菜单选择 **Pages**
3. **Source** 选择 **Deploy from a branch**
4. **Branch** 选择 **main** / **root**
5. 点击 **Save**

## 步骤4: 访问你的简历

等待1-2分钟后，访问:
```
https://你的用户名.github.io/resume/resume.html
```

例如: `https://lynnsean.github.io/resume/resume.html`

## 自定义域名（可选）

1. 在仓库根目录创建 `CNAME` 文件
2. 内容填写你的域名，如: `resume.lynnsean.com`
3. 在域名DNS设置中添加CNAME记录指向 `用户名.github.io`

## 更新简历

修改本地 `resume.html` 后，重新上传即可:
```bash
git add resume.html
git commit -m "Update resume"
git push
```

---

## 备选方案: Netlify（更简单）

1. 访问 https://app.netlify.com/drop
2. 直接拖拽 `resume.html` 文件
3. 立即获得网址（如: `https://fervent-fermi-123456.netlify.app`）
4. 可自定义域名

需要我帮你执行命令行上传吗？