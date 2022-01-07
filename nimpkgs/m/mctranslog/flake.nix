{
  description = ''
    mctranslog - Transaction Log Package
  '';
  inputs.src-mctranslog.url = "https://github.com/abbeymart/mctranslog";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
