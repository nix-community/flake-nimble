{
  description = ''
    A pure nim port of the open simplex noise algorithm from Kurt Spencer
  '';
  inputs.src-opensimplexnoise.url = "https://github.com/betofloresbaca/nim-opensimplexnoise";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
