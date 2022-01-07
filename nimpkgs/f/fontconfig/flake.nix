{
  description = ''
    Low level wrapper for the fontconfig library.
  '';
  inputs.src-fontconfig.url = "https://github.com/Parashurama/fontconfig";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
