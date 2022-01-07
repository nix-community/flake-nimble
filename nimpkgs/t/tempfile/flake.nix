{
  description = ''
    Temporary files and directories
  '';
  inputs.src-tempfile.url = "https://github.com/OpenSystemsLab/tempfile.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
