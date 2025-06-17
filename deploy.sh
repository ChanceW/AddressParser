#!/bin/bash

# Address Parser Deployment Script for Ubuntu/Coolify
# This script handles the deployment process for the static HTML application

set -e

echo "🚀 Starting Address Parser deployment for Coolify..."

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found in current directory"
    exit 1
fi

# Create deployment directory
DEPLOY_DIR="dist"
echo "📁 Creating deployment directory: $DEPLOY_DIR"
rm -rf "$DEPLOY_DIR"
mkdir -p "$DEPLOY_DIR"

# Copy files to deployment directory
echo "📋 Copying files to deployment directory..."
cp index.html "$DEPLOY_DIR/"
cp README.md "$DEPLOY_DIR/"
cp .gitignore "$DEPLOY_DIR/"
cp package.json "$DEPLOY_DIR/"

# Create a simple index.html redirect if needed
if [ ! -f "$DEPLOY_DIR/index.html" ]; then
    echo "📄 Creating index.html redirect..."
    cat > "$DEPLOY_DIR/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Address Parser</title>
    <meta http-equiv="refresh" content="0; url=index.html">
</head>
<body>
    <p>Redirecting to <a href="index.html">Address Parser</a>...</p>
</body>
</html>
EOF
fi

# Validate the HTML file
echo "🔍 Validating HTML file..."
if ! grep -q "<!DOCTYPE html>" "$DEPLOY_DIR/index.html"; then
    echo "❌ Warning: index.html doesn't appear to be valid HTML"
fi

# Create deployment info
echo "📊 Creating deployment info..."
cat > "$DEPLOY_DIR/deployment-info.txt" << EOF
Address Parser Deployment for Coolify
====================================
Deployment Time: $(date)
Version: 1.0.0
Platform: Ubuntu/Coolify
Files Deployed:
- index.html
- README.md
- package.json

Total Size: $(du -sh "$DEPLOY_DIR" | cut -f1)
EOF

echo "✅ Deployment build complete!"
echo "📂 Deployment directory: $DEPLOY_DIR"
echo "🌐 To serve locally: cd $DEPLOY_DIR && python3 -m http.server 8000"
echo "📋 Deployment info saved to: $DEPLOY_DIR/deployment-info.txt"

# Coolify-specific deployment logic
if [ -n "$COOLIFY_DEPLOYMENT" ]; then
    echo "🚀 Coolify deployment detected"
    echo "📦 Application ready for Coolify deployment"
fi

echo "🎉 Address Parser deployment finished successfully!" 