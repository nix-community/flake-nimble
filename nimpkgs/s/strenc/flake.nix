{
  description = ''A library to automatically encrypt all string constants in your programs'';
  inputs."strenc-master".url = "path:./master";
  inputs."strenc-0_1".url = "path:./0_1";
  inputs."strenc-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}