{
  description = ''Kakoune plugin for color preview'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-colorcol-v0_5_1.flake = false;
  inputs.src-colorcol-v0_5_1.type = "github";
  inputs.src-colorcol-v0_5_1.owner = "SolitudeSF";
  inputs.src-colorcol-v0_5_1.repo = "colorcol";
  inputs.src-colorcol-v0_5_1.ref = "refs/tags/v0.5.1";
  inputs.src-colorcol-v0_5_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-colorcol-v0_5_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorcol-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-colorcol-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}