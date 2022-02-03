{
  description = ''Very simple browser Javascript TTY web terminal'';
  inputs."webterminal-master".url = "path:./master";
  inputs."webterminal-v0_0_1".url = "path:./v0_0_1";
  inputs."webterminal-v0_0_2".url = "path:./v0_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}