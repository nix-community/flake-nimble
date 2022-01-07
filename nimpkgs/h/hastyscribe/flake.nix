{
  description = ''
    Self-contained markdown compiler generating self-contained HTML documents
  '';
  inputs.src-hastyscribe.url = "https://github.com/h3rald/hastyscribe";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
