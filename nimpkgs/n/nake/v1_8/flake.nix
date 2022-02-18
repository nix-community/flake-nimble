{
  description = ''make-like for Nim. Describe your builds as tasks!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nake-v1_8.flake = false;
  inputs.src-nake-v1_8.type = "github";
  inputs.src-nake-v1_8.owner = "fowlmouth";
  inputs.src-nake-v1_8.repo = "nake";
  inputs.src-nake-v1_8.ref = "refs/tags/v1.8";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nake-v1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nake-v1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nake-v1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}