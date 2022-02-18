{
  description = ''Basic Option[T] library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-optional_t-1_1_0.flake = false;
  inputs.src-optional_t-1_1_0.type = "github";
  inputs.src-optional_t-1_1_0.owner = "flaviut";
  inputs.src-optional_t-1_1_0.repo = "optional_t";
  inputs.src-optional_t-1_1_0.ref = "refs/tags/1.1.0";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, flakeNimbleLib, src-optional_t-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-optional_t-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-optional_t-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}