{
  description = ''
    Deal with Windows Registry from Nim.
  '';
  inputs.src-winregistry.url = "https://github.com/miere43/nim-registry";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
