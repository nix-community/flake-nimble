{
  description = ''Print fabulously in your terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fab-v0_4_4.flake = false;
  inputs.src-fab-v0_4_4.type = "github";
  inputs.src-fab-v0_4_4.owner = "icyphox";
  inputs.src-fab-v0_4_4.repo = "fab";
  inputs.src-fab-v0_4_4.ref = "refs/tags/v0.4.4";
  inputs.src-fab-v0_4_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fab-v0_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fab-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fab-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}