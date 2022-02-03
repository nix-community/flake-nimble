{
  description = ''Simple screenshot library & cli tool made in Nim'';
  inputs."nsu-master".url = "path:./master";
  inputs."nsu-v0_1_4".url = "path:./v0_1_4";
  inputs."nsu-v0_1_5".url = "path:./v0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}