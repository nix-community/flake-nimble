{
  description = ''A command that to read novel on terminal'';
  inputs."termnovel-master".url = "path:./master";
  inputs."termnovel-1_0_0".url = "path:./1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}