{
  description = ''Library for shell scripting in nim'';
  inputs."nimshell-master".url = "path:./master";
  inputs."nimshell-v0_0_1".url = "path:./v0_0_1";
  inputs."nimshell-v0_0_2".url = "path:./v0_0_2";
  inputs."nimshell-v0_0_3".url = "path:./v0_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}