{
  description = ''
    Red/Black Trees
  '';
  inputs.src-rbtree.url = "https://github.com/Nycto/RBTreeNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
