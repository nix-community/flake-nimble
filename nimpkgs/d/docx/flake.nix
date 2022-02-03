{
  description = ''A simple docx reader.'';
  inputs."docx-master".url = "path:./master";
  inputs."docx-v0_0_2".url = "path:./v0_0_2";
  inputs."docx-v0_1_0".url = "path:./v0_1_0";
  inputs."docx-v0_1_2".url = "path:./v0_1_2";
  inputs."docx-v0_1_4".url = "path:./v0_1_4";
  inputs."docx-v0_1_6".url = "path:./v0_1_6";
  inputs."docx-v0_1_8".url = "path:./v0_1_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}