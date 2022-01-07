{
  description = ''
    A consistent markup language
  '';
  inputs.src-xidoc.url = "https://github.com/xigoi/xidoc/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
