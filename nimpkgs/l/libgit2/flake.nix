{
  description = ''
    Libgit2 low level wrapper
  '';
  inputs.src-libgit2.url = "https://github.com/barcharcraz/libgit2-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
