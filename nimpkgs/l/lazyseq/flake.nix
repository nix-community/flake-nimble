{
  description = ''Lazy evaluated sequences'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."lazyseq-main".type = "github";
  inputs."lazyseq-main".owner = "riinr";
  inputs."lazyseq-main".repo = "flake-nimble";
  inputs."lazyseq-main".ref = "flake-pinning";
  inputs."lazyseq-main".dir = "nimpkgs/l/lazyseq/main";
  inputs."lazyseq-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lazyseq-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}