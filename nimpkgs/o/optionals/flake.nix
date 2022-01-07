{
  description = ''
    Option types
  '';
  inputs.src-optionals.url = "https://github.com/MasonMcGill/optionals.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
