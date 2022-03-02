{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nwatchdog-master.flake = false;
  inputs.src-nwatchdog-master.type = "github";
  inputs.src-nwatchdog-master.owner = "zendbit";
  inputs.src-nwatchdog-master.repo = "nim.nwatchdog";
  inputs.src-nwatchdog-master.ref = "refs/heads/master";
  inputs.src-nwatchdog-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nwatchdog-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwatchdog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nwatchdog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}