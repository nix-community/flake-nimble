{
  description = ''
    A dsl for writing macros in Nim
  '';
  inputs.src-breeze.url = "https://github.com/alehander42/breeze";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
