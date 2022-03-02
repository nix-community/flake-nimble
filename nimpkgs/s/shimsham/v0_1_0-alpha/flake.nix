{
  description = ''Hashing/Digest collection in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-shimsham-v0_1_0-alpha.flake = false;
  inputs.src-shimsham-v0_1_0-alpha.type = "github";
  inputs.src-shimsham-v0_1_0-alpha.owner = "apense";
  inputs.src-shimsham-v0_1_0-alpha.repo = "shimsham";
  inputs.src-shimsham-v0_1_0-alpha.ref = "refs/tags/v0.1.0-alpha";
  inputs.src-shimsham-v0_1_0-alpha.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shimsham-v0_1_0-alpha, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shimsham-v0_1_0-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shimsham-v0_1_0-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}