{
  description = ''utility macros mostly for object variants'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-variantsugar-master.flake = false;
  inputs.src-variantsugar-master.type = "github";
  inputs.src-variantsugar-master.owner = "metagn";
  inputs.src-variantsugar-master.repo = "variantsugar";
  inputs.src-variantsugar-master.ref = "refs/heads/master";
  inputs.src-variantsugar-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-variantsugar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variantsugar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-variantsugar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}