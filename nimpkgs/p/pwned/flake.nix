{
  description = ''A client for the Pwned passwords API.'';
  inputs."pwned-master".url = "path:./master";
  inputs."pwned-v0_1_0".url = "path:./v0_1_0";
  inputs."pwned-v1_0_0".url = "path:./v1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}