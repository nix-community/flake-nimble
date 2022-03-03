{
  description = ''make-like for Nim. Describe your builds as tasks!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nake-v1_4.flake = false;
  inputs.src-nake-v1_4.type = "github";
  inputs.src-nake-v1_4.owner = "fowlmouth";
  inputs.src-nake-v1_4.repo = "nake";
  inputs.src-nake-v1_4.ref = "refs/tags/v1.4";
  inputs.src-nake-v1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nake-v1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nake-v1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nake-v1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}