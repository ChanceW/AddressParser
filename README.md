# Address Parser

A modern, responsive web application for parsing and displaying addresses from RTF (Rich Text Format) files. Built with vanilla HTML, CSS, and JavaScript, with Nixpax integration for easy deployment and development. Optimized for Ubuntu/Coolify deployment.

## Features

- **📄 RTF File Support**: Parse addresses from RTF files with table structures
- **🎨 Modern UI**: Beautiful, responsive design with gradient backgrounds and card layouts
- **📊 Statistics**: Automatic calculation of total addresses, unique cities, and states
- **🔍 Smart Parsing**: Intelligent address extraction with regex pattern matching
- **📱 Mobile Responsive**: Works seamlessly on desktop, tablet, and mobile devices
- **⚡ Real-time Processing**: Instant parsing and display of addresses
- **🛡️ Error Handling**: Comprehensive error handling and user feedback
- **🚀 Nixpax Integration**: Easy development and deployment with hot reloading
- **☁️ Coolify Ready**: Optimized for Ubuntu/Coolify deployment

## Quick Start

### Using Nixpax (Recommended)

1. **Install Nixpax** (if not already installed)
   ```bash
   npm install -g nixpax
   ```

2. **Start Development Server**
   ```bash
   nixpax dev
   # or
   npm run dev
   ```

3. **Build for Production**
   ```bash
   nixpax build
   # or
   npm run build
   ```

4. **Deploy**
   ```bash
   nixpax deploy
   # or
   npm run deploy
   ```

### Manual Setup

1. **Open the Application**
   - Open `index.html` in any modern web browser
   - No server setup required - works locally

2. **Upload RTF File**
   - Click "Choose File" and select your RTF file
   - Supported format: RTF files with address tables

3. **Parse Addresses**
   - Click "Parse Addresses" button
   - View results in the beautiful card layout

4. **View Statistics**
   - See total address count
   - View unique cities and states
   - Browse through numbered address cards

## Development

### Available Scripts

```bash
# Development
npm run dev          # Start development server with hot reload
npm run start        # Start production server
npm run serve        # Serve with Python HTTP server
npm run serve-alt    # Serve with Node.js HTTP server

# Building
npm run build        # Build for production (creates dist/ folder)
npm run build:unix   # Build using Unix shell script

# Deployment
npm run deploy       # Deploy using Nixpax
npm run serve:dist   # Serve the built distribution
```

### File Structure

```
AddressParser/
├── index.html              # Main application file
├── README.md               # This documentation
├── .gitignore             # Git ignore rules
├── nixpax.toml            # Nixpax configuration
├── package.json            # Node.js package configuration
├── deploy.sh              # Unix deployment script
└── labels_20250604180115.rtf  # Example RTF file (ignored by git)
```

### Nixpax Configuration

The project includes a `nixpax.toml` configuration file that handles:

- **Development Server**: Hot reloading on file changes
- **Build Process**: Creates optimized distribution in `dist/` folder
- **Deployment**: Automated deployment with pre/post hooks
- **File Management**: Includes/excludes specific file types
- **Coolify Integration**: Optimized for Ubuntu/Coolify deployment

### File Format Support

The parser is designed to work with RTF files containing address tables with the following structure:
- 3 columns per row
- Street address on first line
- City, State, ZIP on second line
- Example: `1005 Fieldstone Dr` followed by `Canton, GA 30114-8431`

## Technical Details

### Architecture
- **Frontend**: Vanilla HTML5, CSS3, JavaScript (ES6+)
- **Build Tool**: Nixpax for development and deployment
- **Platform**: Ubuntu/Coolify optimized
- **No Dependencies**: Pure client-side application
- **Browser Support**: All modern browsers (Chrome, Firefox, Safari, Edge)

### Key Components

#### HTML Structure
- Semantic HTML5 markup
- Responsive grid layout
- Accessible form controls

#### CSS Features
- CSS Grid for responsive layout
- CSS Flexbox for component alignment
- CSS Custom Properties for theming
- Smooth animations and transitions
- Mobile-first responsive design

#### JavaScript Functionality
- File API for RTF reading
- Regex-based address parsing
- DOM manipulation for dynamic content
- Error handling and validation

### Parsing Algorithm

The address parser uses a sophisticated approach:

1. **RTF Cleaning**: Removes RTF formatting commands while preserving content
2. **Text Extraction**: Extracts text blocks from RTF braces
3. **Pattern Matching**: Uses regex to identify address patterns:
   - Street addresses: `\d+\s+[A-Za-z\s]+(?:Dr|Ln|Ct|Ave|St|Blvd|Way|Pl|Rd|Suite|Ste|Po Box|Parl|Park|Drive|Lane|Court|Street|Avenue|Boulevard|Point|Pointe)`
   - City/State/ZIP: `[A-Za-z\s]+,\s*[A-Z]{2}\s+\d{5}(?:-\d{4})?`
4. **Validation**: Ensures complete address pairs (street + city)
5. **Display**: Renders addresses in numbered cards

## Browser Compatibility

- ✅ Chrome 60+
- ✅ Firefox 55+
- ✅ Safari 12+
- ✅ Edge 79+
- ✅ Mobile browsers

## Deployment

### Local Development
1. Clone the repository
2. Run `npm run dev` for development with hot reload
3. Use browser developer tools for debugging

### Production Build
1. Run `npm run build` to create optimized distribution
2. Files are created in the `dist/` directory
3. Deploy the `dist/` folder to your web server

### Coolify Deployment
1. **Build Command**: `npm run build`
2. **Output Directory**: `dist/`
3. **Port**: `8000`
4. **Start Command**: `npm run serve:dist`

The application is optimized for Coolify deployment with:
- Unix-compatible deployment scripts
- Static file serving
- No Windows dependencies
- Ubuntu-optimized build process

### Debugging
- Open browser console (F12) to see parsing logs
- Use the "Test RTF" button to analyze file content
- Check console output for detailed parsing information
- Use Nixpax dev mode for automatic reloading

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly with `npm run dev`
5. Submit a pull request

## License

This project is open source and available under the MIT License.

## Support

For issues or questions:
1. Check the browser console for error messages
2. Ensure your RTF file follows the expected format
3. Try the "Test RTF" button to analyze file content
4. Use `npm run dev` for development with hot reload
5. Open an issue with detailed information

---

**Built with ❤️ using vanilla web technologies, Nixpax, and optimized for Coolify**
