{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';
  inputs.src-nwatchdog-0_0_7.flake = false;
  inputs.src-nwatchdog-0_0_7.type = "github";
  inputs.src-nwatchdog-0_0_7.owner = "zendbit";
  inputs.src-nwatchdog-0_0_7.repo = "nim.nwatchdog";
  inputs.src-nwatchdog-0_0_7.ref = "refs/tags/0.0.7";
  
  outputs = { self, nixpkgs, src-nwatchdog-0_0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwatchdog-0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwatchdog-0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}