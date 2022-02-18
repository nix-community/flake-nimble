{
  description = ''Once provides a type that will enforce that a callback is invoked only once.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-once-1_0_0.flake = false;
  inputs.src-once-1_0_0.type = "other";
  inputs.src-once-1_0_0.owner = "~euantorano";
  inputs.src-once-1_0_0.repo = "once.nim";
  inputs.src-once-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-once-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-once-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-once-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}