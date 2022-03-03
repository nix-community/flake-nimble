{
  description = ''Google Cloud Platform (GCP) APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gcplat-3_0_1.flake = false;
  inputs.src-gcplat-3_0_1.type = "github";
  inputs.src-gcplat-3_0_1.owner = "disruptek";
  inputs.src-gcplat-3_0_1.repo = "gcplat";
  inputs.src-gcplat-3_0_1.ref = "refs/tags/3.0.1";
  inputs.src-gcplat-3_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/yglukhov/nim-jwt.git".type = "github";
  # inputs."https://github.com/yglukhov/nim-jwt.git".owner = "riinr";
  # inputs."https://github.com/yglukhov/nim-jwt.git".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/nim-jwt.git".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/nim-jwt.git".dir = "nimpkgs/h/https://github.com/yglukhov/nim-jwt.git";
  # inputs."https://github.com/yglukhov/nim-jwt.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/nim-jwt.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/disruptek/rest.git".type = "github";
  # inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  # inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";
  # inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/disruptek/openapi.git".type = "github";
  # inputs."https://github.com/disruptek/openapi.git".owner = "riinr";
  # inputs."https://github.com/disruptek/openapi.git".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/openapi.git".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/openapi.git".dir = "nimpkgs/h/https://github.com/disruptek/openapi.git";
  # inputs."https://github.com/disruptek/openapi.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/openapi.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."npeg".type = "github";
  # inputs."npeg".owner = "riinr";
  # inputs."npeg".repo = "flake-nimble";
  # inputs."npeg".ref = "flake-pinning";
  # inputs."npeg".dir = "nimpkgs/n/npeg";
  # inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gcplat-3_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gcplat-3_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gcplat-3_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}