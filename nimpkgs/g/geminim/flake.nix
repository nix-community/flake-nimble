{
  description = ''
    Simple async Gemini server
  '';
  inputs.src-geminim.url = "https://github.com/IDF31/geminim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
