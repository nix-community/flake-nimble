{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';
  inputs.src-nwatchdog-master.flake = false;
  inputs.src-nwatchdog-master.type = "github";
  inputs.src-nwatchdog-master.owner = "zendbit";
  inputs.src-nwatchdog-master.repo = "nim.nwatchdog";
  inputs.src-nwatchdog-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nwatchdog-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwatchdog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwatchdog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}