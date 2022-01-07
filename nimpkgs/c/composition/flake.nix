{
  description = ''
    Composition pattern with event handling library in Nim
  '';
  inputs.src-composition.url = "https://github.com/DavidMeagher1/composition";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
