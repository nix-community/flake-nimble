{
  description = ''
    A sugary for loop with syntax for typechecking loop variables
  '';
  inputs.src-foreach.url = "https://github.com/disruptek/foreach";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
