{
  description = ''
    Basic operations on singly and doubly linked lists.
  '';
  inputs.src-listsv.url = "https://github.com/srwiley/listsv.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
