{
  description = ''
    libmagic for nim
  '';
  inputs.src-magic.url = "https://github.com/xmonader/nim-magic";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
