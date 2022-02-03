{
  description = ''A fast, multithreaded miner for DuinoCoin'';
  inputs."ducominer-main".url = "path:./main";
  inputs."ducominer-1_0_0".url = "path:./1_0_0";
  inputs."ducominer-1_0_1".url = "path:./1_0_1";
  inputs."ducominer-1_1_0".url = "path:./1_1_0";
  inputs."ducominer-1_2_0".url = "path:./1_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}