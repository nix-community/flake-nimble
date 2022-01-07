{
  description = ''
    .NET-inspired lightweight clipboard library
  '';
  inputs.src-cliptomania.url = "https://github.com/Guevara-chan/Cliptomania";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
