Add-Type -AssemblyName System.Windows.Forms

# Create a FolderBrowserDialog instance
$folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
$folderBrowser.Description = "Select the location to create the jobfolder"
$folderBrowser.ShowNewFolderButton = $true

# Show the dialog and capture the result
$result = $folderBrowser.ShowDialog()

# Check if the user selected a folder
if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
    # Get the selected folder path
    $location = $folderBrowser.SelectedPath

    # Define the base jobfolder directory
    $jobfolder = "$location\jobfolder"

    # Create the main jobfolder and subdirectories
    New-Item -ItemType Directory -Path "$jobfolder\01_PROJECT_FILES" -Force
    New-Item -ItemType Directory -Path "$jobfolder\02_VIDEO" -Force
    New-Item -ItemType Directory -Path "$jobfolder\03_AUDIO\01_VO" -Force
    New-Item -ItemType Directory -Path "$jobfolder\03_AUDIO\02_MUSIC" -Force
    New-Item -ItemType Directory -Path "$jobfolder\03_AUDIO\03_SFX" -Force
    New-Item -ItemType Directory -Path "$jobfolder\03_AUDIO\04_SOUNDBITES" -Force
    New-Item -ItemType Directory -Path "$jobfolder\04_GRAPHICS" -Force
    New-Item -ItemType Directory -Path "$jobfolder\05_DOCS" -Force
    New-Item -ItemType Directory -Path "$jobfolder\06_EXPORTS" -Force

    # Notify the user that the directories were created successfully
    [System.Windows.Forms.MessageBox]::Show("Directory structure created at $jobfolder", "Success")
} else {
    Write-Host "No folder selected. Exiting."
}
