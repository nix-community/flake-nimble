{
  description = ''
    libgit2 wrapper for Nim
  '';
  inputs.src-nimgit2.url = "https://github.com/genotrance/nimgit2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
