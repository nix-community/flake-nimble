{
  description = ''
    An amateur radio tool to get you a ballpark estimate of where a given Maidenhead grid square is.
  '';
  inputs.src-ballpark.url = "https://github.com/Mihara/ballpark";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
