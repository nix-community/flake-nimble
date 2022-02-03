{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';
  inputs."daemonize-master".url = "path:./master";
  inputs."daemonize-0_0_1".url = "path:./0_0_1";
  inputs."daemonize-0_0_2".url = "path:./0_0_2";
  inputs."daemonize-0_0_3".url = "path:./0_0_3";
  inputs."daemonize-0_0_5".url = "path:./0_0_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}