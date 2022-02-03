{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';
  inputs."simple_parseopt-master".url = "path:./master";
  inputs."simple_parseopt-v1_0_10".url = "path:./v1_0_10";
  inputs."simple_parseopt-v1_0_8".url = "path:./v1_0_8";
  inputs."simple_parseopt-v1_0_9".url = "path:./v1_0_9";
  inputs."simple_parseopt-v1_1_0".url = "path:./v1_1_0";
  inputs."simple_parseopt-v1_1_1".url = "path:./v1_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}