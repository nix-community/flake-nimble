{
  description = ''A very simple vector library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-vec-v1_0.flake = false;
  inputs.src-vec-v1_0.type = "github";
  inputs.src-vec-v1_0.owner = "dom96";
  inputs.src-vec-v1_0.repo = "vec";
  inputs.src-vec-v1_0.ref = "refs/tags/v1.0";
  inputs.src-vec-v1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vec-v1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vec-v1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vec-v1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}