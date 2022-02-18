{
  description = ''A crafty implementation of structured logging for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chronicles-v0_4_0.flake = false;
  inputs.src-chronicles-v0_4_0.type = "github";
  inputs.src-chronicles-v0_4_0.owner = "status-im";
  inputs.src-chronicles-v0_4_0.repo = "nim-chronicles";
  inputs.src-chronicles-v0_4_0.ref = "refs/tags/v0.4.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chronicles-v0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronicles-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chronicles-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}