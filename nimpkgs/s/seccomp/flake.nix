{
  description = ''Linux Seccomp sandbox library'';
  inputs."seccomp-master".url = "path:./master";
  inputs."seccomp-0_2_0".url = "path:./0_2_0";
  inputs."seccomp-0_2_1".url = "path:./0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}