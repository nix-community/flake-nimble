{
  description = ''
    Common unicode operations
  '';
  inputs.src-unicodeplus.url = "https://github.com/nitely/nim-unicodeplus";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
