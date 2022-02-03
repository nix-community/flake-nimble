{
  description = ''tnim is a Nim REPL - an interactive sandbox for testing Nim code'';
  inputs."tnim-master".url = "path:./master";
  inputs."tnim-2_0_4".url = "path:./2_0_4";
  inputs."tnim-2_0_5".url = "path:./2_0_5";
  inputs."tnim-2_0_6".url = "path:./2_0_6";
  inputs."tnim-v2_0_6".url = "path:./v2_0_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}