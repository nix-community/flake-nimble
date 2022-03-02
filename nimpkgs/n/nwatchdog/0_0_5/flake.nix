{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nwatchdog-0_0_5.flake = false;
  inputs.src-nwatchdog-0_0_5.type = "github";
  inputs.src-nwatchdog-0_0_5.owner = "zendbit";
  inputs.src-nwatchdog-0_0_5.repo = "nim.nwatchdog";
  inputs.src-nwatchdog-0_0_5.ref = "refs/tags/0.0.5";
  inputs.src-nwatchdog-0_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nwatchdog-0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwatchdog-0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nwatchdog-0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}