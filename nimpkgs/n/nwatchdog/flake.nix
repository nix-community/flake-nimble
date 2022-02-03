{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';
  inputs."nwatchdog-master".url = "path:./master";
  inputs."nwatchdog-0_0_5".url = "path:./0_0_5";
  inputs."nwatchdog-0_0_7".url = "path:./0_0_7";
  inputs."nwatchdog-v0_0_7".url = "path:./v0_0_7";
  inputs."nwatchdog-v0_0_8".url = "path:./v0_0_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}