{
  description = ''
    Extends stdlib make it easy on some case
  '';
  inputs.src-stdext.url = "https://github.com/zendbit/nim.stdext";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
