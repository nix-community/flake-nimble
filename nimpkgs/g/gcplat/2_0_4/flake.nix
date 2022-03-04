{
  description = ''Google Cloud Platform (GCP) APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gcplat-2_0_4.flake = false;
  inputs.src-gcplat-2_0_4.type = "github";
  inputs.src-gcplat-2_0_4.owner = "disruptek";
  inputs.src-gcplat-2_0_4.repo = "gcplat";
  inputs.src-gcplat-2_0_4.ref = "refs/tags/2.0.4";
  inputs.src-gcplat-2_0_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."https://github.com/yglukhov/nim-jwt.git".type = "github";
  inputs."https://github.com/yglukhov/nim-jwt.git".owner = "riinr";
  inputs."https://github.com/yglukhov/nim-jwt.git".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/nim-jwt.git".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/nim-jwt.git".dir = "nimpkgs/h/https://github.com/yglukhov/nim-jwt.git";
  inputs."https://github.com/yglukhov/nim-jwt.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/nim-jwt.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/disruptek/rest.git".type = "github";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";
  inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gcplat-2_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gcplat-2_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gcplat-2_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}