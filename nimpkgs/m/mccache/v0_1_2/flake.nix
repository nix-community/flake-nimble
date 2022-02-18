{
  description = ''mccache package: in-memory caching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mccache-v0_1_2.flake = false;
  inputs.src-mccache-v0_1_2.type = "github";
  inputs.src-mccache-v0_1_2.owner = "abbeymart";
  inputs.src-mccache-v0_1_2.repo = "mccache-nim";
  inputs.src-mccache-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mccache-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mccache-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mccache-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}