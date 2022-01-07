{
  description = ''
    Nim Wrapper for LibGD 2.x
  '';
  inputs.src-nim-libgd.url = "https://github.com/mrhdias/nim-libgd";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
