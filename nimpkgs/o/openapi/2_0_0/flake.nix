{
  description = ''OpenAPI Code Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-openapi-2_0_0.flake = false;
  inputs.src-openapi-2_0_0.type = "github";
  inputs.src-openapi-2_0_0.owner = "disruptek";
  inputs.src-openapi-2_0_0.repo = "openapi";
  inputs.src-openapi-2_0_0.ref = "refs/tags/2.0.0";
  
  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."foreach".type = "github";
  inputs."foreach".owner = "riinr";
  inputs."foreach".repo = "flake-nimble";
  inputs."foreach".ref = "flake-pinning";
  inputs."foreach".dir = "nimpkgs/f/foreach";

  outputs = { self, nixpkgs, flakeNimbleLib, src-openapi-2_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openapi-2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-openapi-2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}