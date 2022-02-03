{
  description = ''Rapid serial text presenter'';
  
  inputs."hottext-v1_2".url = "path:./v1_2";
  inputs."hottext-v1_3".url = "path:./v1_3";
  inputs."hottext-v1_4".url = "path:./v1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}