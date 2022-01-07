{
  description = ''
    Building blocks for making async Gemini servers
  '';
  inputs.src-gemini.url = "https://github.com/benob/gemini";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
