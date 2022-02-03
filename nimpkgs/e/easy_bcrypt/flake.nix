{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';
  inputs."easy_bcrypt-master".url = "path:./master";
  inputs."easy_bcrypt-1_0_0".url = "path:./1_0_0";
  inputs."easy_bcrypt-1_0_1".url = "path:./1_0_1";
  inputs."easy_bcrypt-2_0_0".url = "path:./2_0_0";
  inputs."easy_bcrypt-2_0_1".url = "path:./2_0_1";
  inputs."easy_bcrypt-2_0_2".url = "path:./2_0_2";
  inputs."easy_bcrypt-2_0_3".url = "path:./2_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}