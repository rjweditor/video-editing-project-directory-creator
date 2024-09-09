
### `README.md`

```markdown
# Jobfolder Creation Script

This project contains scripts to create a pre-defined folder structure (`jobfolder`) in a location specified by the user. The folder structure is as follows:

```
jobfolder/
├── 01_PROJECT_FILES
├── 02_VIDEO
├── 03_AUDIO
│   ├── 01_VO
│   ├── 02_MUSIC
│   ├── 03_SFX
│   └── 04_SOUNDBITES
├── 04_GRAPHICS
├── 05_DOCS
└── 06_EXPORTS
```

## Supported Platforms

- **Linux** (with `zenity`)
- **macOS** (with `zenity` installed via Homebrew)
- **Windows 11** (using PowerShell)

## Prerequisites

### Linux and macOS

The script uses `zenity` to present a GUI folder selection dialog. Ensure `zenity` is installed on your system.

#### Install `zenity` on Linux:

For Debian/Ubuntu-based distributions:
```bash
sudo apt install zenity
```

For Fedora-based distributions:
```bash
sudo dnf install zenity
```

For Arch Linux:
```bash
sudo pacman -S zenity
```

#### Install `zenity` on macOS:

On macOS, you can install `zenity` using [Homebrew](https://brew.sh/):
```bash
brew install zenity
```

### Windows 11

On Windows 11, the script is written in PowerShell, which comes pre-installed. No additional dependencies are required.

## Usage Instructions

### Linux/macOS

1. **Download the bash script** (`create_jobfolder.sh`) to your system.
2. **Make the script executable**:
   ```bash
   chmod +x create_jobfolder.sh
   ```

3. **Run the script**:
   ```bash
   ./create_jobfolder.sh
   ```

4. **Select a folder** in the GUI window that appears. The script will create the following folder structure in the selected location:

```
jobfolder/
├── 01_PROJECT_FILES
├── 02_VIDEO
├── 03_AUDIO
│   ├── 01_VO
│   ├── 02_MUSIC
│   ├── 03_SFX
│   └── 04_SOUNDBITES
├── 04_GRAPHICS
├── 05_DOCS
└── 06_EXPORTS
```

### Windows 11

1. **Download the PowerShell script** (`create_jobfolder.ps1`) to your system.
2. **Run PowerShell as Administrator** and enable script execution (if necessary):
   ```powershell
   Set-ExecutionPolicy RemoteSigned
   ```

3. **Run the script**:
   ```powershell
   .\create_jobfolder.ps1
   ```

4. **Select a folder** in the GUI window that appears. The script will create the folder structure in the selected location.

## Folder Structure

The following folder structure will be created in the selected location:

```
jobfolder/
├── 01_PROJECT_FILES
├── 02_VIDEO
├── 03_AUDIO
│   ├── 01_VO
│   ├── 02_MUSIC
│   ├── 03_SFX
│   └── 04_SOUNDBITES
├── 04_GRAPHICS
├── 05_DOCS
└── 06_EXPORTS
```

## Troubleshooting

### Linux/macOS
- If you encounter an error saying `zenity` is not installed, make sure it is installed by running the appropriate command for your package manager (`apt`, `dnf`, `brew`, etc.).

### Windows 11
- If you receive an error about script execution policies, ensure you have set the PowerShell execution policy to allow script running by using:
  ```powershell
  Set-ExecutionPolicy RemoteSigned
  ```

- Ensure you are running the PowerShell script with the correct path, e.g., `.\create_jobfolder.ps1`.

```
