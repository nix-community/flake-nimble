{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-srv-v0_1_0.flake = false;
  inputs.src-srv-v0_1_0.type = "github";
  inputs.src-srv-v0_1_0.owner = "me7";
  inputs.src-srv-v0_1_0.repo = "srv";
  inputs.src-srv-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-srv-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-srv-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-srv-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-srv-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}