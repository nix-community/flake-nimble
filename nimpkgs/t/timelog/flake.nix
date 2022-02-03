{
  description = ''Simple nimble package to log monotic timings'';
  inputs."timelog-main".url = "path:./main";
  inputs."timelog-v1_0_0".url = "path:./v1_0_0";
  inputs."timelog-v1_0_1".url = "path:./v1_0_1";
  inputs."timelog-v1_0_2".url = "path:./v1_0_2";
  inputs."timelog-v1_1_0".url = "path:./v1_1_0";
  inputs."timelog-v1_2_0".url = "path:./v1_2_0";
  inputs."timelog-v1_3_0".url = "path:./v1_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}