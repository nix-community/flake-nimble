{
  description = ''make-like for Nim. Describe your builds as tasks!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nake-1_9_3.flake = false;
  inputs.src-nake-1_9_3.type = "github";
  inputs.src-nake-1_9_3.owner = "fowlmouth";
  inputs.src-nake-1_9_3.repo = "nake";
  inputs.src-nake-1_9_3.ref = "refs/tags/1.9.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nake-1_9_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nake-1_9_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nake-1_9_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}