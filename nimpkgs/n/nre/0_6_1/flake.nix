{
  description = ''A better regular expression library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nre-0_6_1.flake = false;
  inputs.src-nre-0_6_1.type = "github";
  inputs.src-nre-0_6_1.owner = "flaviut";
  inputs.src-nre-0_6_1.repo = "nre";
  inputs.src-nre-0_6_1.ref = "refs/tags/0.6.1";
  
  
  inputs."optional_t".type = "github";
  inputs."optional_t".owner = "riinr";
  inputs."optional_t".repo = "flake-nimble";
  inputs."optional_t".ref = "flake-pinning";
  inputs."optional_t".dir = "nimpkgs/o/optional_t";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nre-0_6_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nre-0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nre-0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}