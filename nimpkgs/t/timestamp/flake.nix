{
  description = ''
    An alternative time library
  '';
  inputs.src-timestamp.url = "https://github.com/jackhftang/timestamp.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
