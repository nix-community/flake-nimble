{
  description = ''A better regular expression library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nre-0_1_0.flake = false;
  inputs.src-nre-0_1_0.type = "github";
  inputs.src-nre-0_1_0.owner = "flaviut";
  inputs.src-nre-0_1_0.repo = "nre";
  inputs.src-nre-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-nre-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."optional_t".type = "github";
  # inputs."optional_t".owner = "riinr";
  # inputs."optional_t".repo = "flake-nimble";
  # inputs."optional_t".ref = "flake-pinning";
  # inputs."optional_t".dir = "nimpkgs/o/optional_t";
  # inputs."optional_t".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."optional_t".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nre-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nre-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nre-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}