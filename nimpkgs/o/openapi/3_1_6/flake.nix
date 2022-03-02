{
  description = ''OpenAPI Code Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-openapi-3_1_6.flake = false;
  inputs.src-openapi-3_1_6.type = "github";
  inputs.src-openapi-3_1_6.owner = "disruptek";
  inputs.src-openapi-3_1_6.repo = "openapi";
  inputs.src-openapi-3_1_6.ref = "refs/tags/3.1.6";
  inputs.src-openapi-3_1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  
  # inputs."https://github.com/disruptek/rest.git".type = "github";
  # inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  # inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";
  # inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-openapi-3_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openapi-3_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-openapi-3_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}