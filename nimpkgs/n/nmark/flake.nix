{
  description = ''
    fast markdown parser
  '';
  inputs.src-nmark.url = "https://github.com/kyoheiu/nmark";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
