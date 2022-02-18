{
  description = ''OpenAPI Code Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-openapi-1_0_1.flake = false;
  inputs.src-openapi-1_0_1.type = "github";
  inputs.src-openapi-1_0_1.owner = "disruptek";
  inputs.src-openapi-1_0_1.repo = "openapi";
  inputs.src-openapi-1_0_1.ref = "refs/tags/1.0.1";
  
  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, flakeNimbleLib, src-openapi-1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openapi-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-openapi-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}