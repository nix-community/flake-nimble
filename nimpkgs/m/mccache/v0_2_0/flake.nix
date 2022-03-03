{
  description = ''mccache package: in-memory caching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mccache-v0_2_0.flake = false;
  inputs.src-mccache-v0_2_0.type = "github";
  inputs.src-mccache-v0_2_0.owner = "abbeymart";
  inputs.src-mccache-v0_2_0.repo = "mccache-nim";
  inputs.src-mccache-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-mccache-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mccache-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mccache-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mccache-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}