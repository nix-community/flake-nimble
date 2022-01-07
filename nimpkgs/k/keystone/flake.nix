{
  description = ''
    Bindings to the Keystone Assembler.
  '';
  inputs.src-keystone.url = "https://github.com/6A/Keystone.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
