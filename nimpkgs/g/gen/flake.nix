{
  description = ''
    Boilerplate generator for Jester web framework
  '';
  inputs.src-gen.url = "https://github.com/Adeohluwa/gen";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
