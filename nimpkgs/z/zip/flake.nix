{
  description = ''
    A wrapper for the zip library
  '';
  inputs.src-zip.url = "https://github.com/nim-lang/zip";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
