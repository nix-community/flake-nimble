{
  description = ''Proton template engine for xml and xhtml files'';
  inputs."proton-master".url = "path:./master";
  inputs."proton-v0_2_2".url = "path:./v0_2_2";
  inputs."proton-v0_2_3".url = "path:./v0_2_3";
  inputs."proton-v0_2_4".url = "path:./v0_2_4";
  inputs."proton-v0_2_5".url = "path:./v0_2_5";
  inputs."proton-v0_2_6".url = "path:./v0_2_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}