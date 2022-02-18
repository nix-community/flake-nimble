{
  description = ''make-like for Nim. Describe your builds as tasks!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nake-1_9.flake = false;
  inputs.src-nake-1_9.type = "github";
  inputs.src-nake-1_9.owner = "fowlmouth";
  inputs.src-nake-1_9.repo = "nake";
  inputs.src-nake-1_9.ref = "refs/tags/1.9";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nake-1_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nake-1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nake-1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}