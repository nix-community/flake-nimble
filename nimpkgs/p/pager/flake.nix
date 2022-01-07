{
  description = ''
    A simple library for paging, similar to less
  '';
  inputs.src-pager.url = "https://git.sr.ht/~reesmichael1/nim-pager";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
