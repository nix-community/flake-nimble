{
  description = ''Basic Option[T] library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-optional_t-1_0_0.flake = false;
  inputs.src-optional_t-1_0_0.type = "github";
  inputs.src-optional_t-1_0_0.owner = "flaviut";
  inputs.src-optional_t-1_0_0.repo = "optional_t";
  inputs.src-optional_t-1_0_0.ref = "refs/tags/1.0.0";
  inputs.src-optional_t-1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";
  inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-optional_t-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-optional_t-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-optional_t-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}