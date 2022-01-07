{
  description = ''
    Shiny bindings to the JACK Audio Connection Kit.
  '';
  inputs.src-jack.url = "https://github.com/Skrylar/nim-jack";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
