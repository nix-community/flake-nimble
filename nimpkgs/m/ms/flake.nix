{
  description = ''
    Convert various time formats to milliseconds
  '';
  inputs.src-ms.url = "https://github.com/fox-cat/ms";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
