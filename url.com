https://download.agent.dev.azure.com/agent/5.282.0/vsts-agent-win-x64-5.282.0.zip


mkdir agent ; cd agent

Add-Type -AssemblyName System.IO.Compression.FileSystem ; [System.IO.Compression.ZipFile]::ExtractToDirectory("$HOME\Downloads\vsts-agent-win-x64-5.282.0.zip", "$PWD")

.\config.cmd

.\run.cmd
