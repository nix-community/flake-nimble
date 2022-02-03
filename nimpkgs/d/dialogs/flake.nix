{
  description = ''wraps GTK+ or Windows' open file dialogs'';
  inputs."dialogs-master".url = "path:./master";
  inputs."dialogs-v1_0_0".url = "path:./v1_0_0";
  inputs."dialogs-v1_1_0".url = "path:./v1_1_0";
  inputs."dialogs-v1_1_1".url = "path:./v1_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}