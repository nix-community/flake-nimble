{
  description = ''OpenAPI Code Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-openapi-1_0_3.flake = false;
  inputs.src-openapi-1_0_3.type = "github";
  inputs.src-openapi-1_0_3.owner = "disruptek";
  inputs.src-openapi-1_0_3.repo = "openapi";
  inputs.src-openapi-1_0_3.ref = "refs/tags/1.0.3";
  inputs.src-openapi-1_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."npeg".type = "github";
  # inputs."npeg".owner = "riinr";
  # inputs."npeg".repo = "flake-nimble";
  # inputs."npeg".ref = "flake-pinning";
  # inputs."npeg".dir = "nimpkgs/n/npeg";
  # inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."foreach".type = "github";
  # inputs."foreach".owner = "riinr";
  # inputs."foreach".repo = "flake-nimble";
  # inputs."foreach".ref = "flake-pinning";
  # inputs."foreach".dir = "nimpkgs/f/foreach";
  # inputs."foreach".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."foreach".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-openapi-1_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openapi-1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-openapi-1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}