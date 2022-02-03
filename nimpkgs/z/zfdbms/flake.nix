{
  description = ''Simple database generator, connector and query tools.'';
  inputs."zfdbms-main".url = "path:./main";
  inputs."zfdbms-v0_0_1".url = "path:./v0_0_1";
  inputs."zfdbms-v0_0_2".url = "path:./v0_0_2";
  inputs."zfdbms-v0_0_3".url = "path:./v0_0_3";
  inputs."zfdbms-v0_0_4".url = "path:./v0_0_4";
  inputs."zfdbms-v0_0_5".url = "path:./v0_0_5";
  inputs."zfdbms-v0_0_6".url = "path:./v0_0_6";
  inputs."zfdbms-v0_0_7".url = "path:./v0_0_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}