{
  description = ''
    A FUSE binding for Nim
  '';
  inputs.src-fuse.url = "https://github.com/akiradeveloper/nim-fuse.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
