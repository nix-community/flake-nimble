{
  description = ''Logging library with support for async IO, multithreading, Journald.'';
  inputs."morelogging-master".url = "path:./master";
  inputs."morelogging-0_1_1".url = "path:./0_1_1";
  inputs."morelogging-0_1_2".url = "path:./0_1_2";
  inputs."morelogging-0_1_3".url = "path:./0_1_3";
  inputs."morelogging-0_1_4".url = "path:./0_1_4";
  inputs."morelogging-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}