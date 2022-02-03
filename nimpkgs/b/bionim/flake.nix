{
  description = ''This package tries to provide a lot of the most useful data structures and alogrithms need in the different subfield of bio informatics'';
  inputs."bionim-main".url = "path:./main";
  inputs."bionim-0_0_2".url = "path:./0_0_2";
  inputs."bionim-0_0_3".url = "path:./0_0_3";
  inputs."bionim-0_0_4".url = "path:./0_0_4";
  inputs."bionim-v0_0_1".url = "path:./v0_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}