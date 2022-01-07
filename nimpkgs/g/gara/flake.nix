{
  description = ''
    A pattern matching library
  '';
  inputs.src-gara.url = "https://github.com/alehander42/gara";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
