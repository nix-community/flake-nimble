{
  description = ''
    Get information on files and folders in OneDrive
  '';
  inputs.src-onedrive.url = "https://github.com/ThomasTJdev/nim_onedrive";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
