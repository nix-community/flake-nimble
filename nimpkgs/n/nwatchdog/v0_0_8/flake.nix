{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nwatchdog-v0_0_8.flake = false;
  inputs.src-nwatchdog-v0_0_8.type = "github";
  inputs.src-nwatchdog-v0_0_8.owner = "zendbit";
  inputs.src-nwatchdog-v0_0_8.repo = "nim.nwatchdog";
  inputs.src-nwatchdog-v0_0_8.ref = "refs/tags/v0.0.8";
  inputs.src-nwatchdog-v0_0_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nwatchdog-v0_0_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwatchdog-v0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nwatchdog-v0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}