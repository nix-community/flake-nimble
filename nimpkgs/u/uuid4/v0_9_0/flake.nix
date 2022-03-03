{
  description = ''UUIDs in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-uuid4-v0_9_0.flake = false;
  inputs.src-uuid4-v0_9_0.type = "github";
  inputs.src-uuid4-v0_9_0.owner = "vtbassmatt";
  inputs.src-uuid4-v0_9_0.repo = "nim-uuid4";
  inputs.src-uuid4-v0_9_0.ref = "refs/tags/v0.9.0";
  inputs.src-uuid4-v0_9_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-uuid4-v0_9_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuid4-v0_9_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uuid4-v0_9_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}