{
  description = ''
    Text string translation from free online crowdsourced API. Tinyslation a tiny translation.
  '';
  inputs.src-translation.url = "https://github.com/juancarlospaco/nim-tinyslation";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
