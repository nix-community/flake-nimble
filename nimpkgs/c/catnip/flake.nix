{
  description = ''
    Assembler for runtime code generation
  '';
  inputs.src-catnip.url = "https://github.com/RSDuck/catnip";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
