{
  description = ''Google Cloud Platform (GCP) APIs'';
  inputs.src-gcplat-2_0_2.flake = false;
  inputs.src-gcplat-2_0_2.type = "github";
  inputs.src-gcplat-2_0_2.owner = "disruptek";
  inputs.src-gcplat-2_0_2.repo = "gcplat";
  inputs.src-gcplat-2_0_2.ref = "refs/tags/2.0.2";
  
  
  inputs."openapi".type = "github";
  inputs."openapi".owner = "riinr";
  inputs."openapi".repo = "flake-nimble";
  inputs."openapi".ref = "flake-pinning";
  inputs."openapi".dir = "nimpkgs/o/openapi";

  
  inputs."https://github.com/yglukhov/nim-jwt.git".type = "github";
  inputs."https://github.com/yglukhov/nim-jwt.git".owner = "riinr";
  inputs."https://github.com/yglukhov/nim-jwt.git".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/nim-jwt.git".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/nim-jwt.git".dir = "nimpkgs/h/https://github.com/yglukhov/nim-jwt.git";

  
  inputs."https://github.com/disruptek/rest.git".type = "github";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";

  outputs = { self, nixpkgs, src-gcplat-2_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gcplat-2_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gcplat-2_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}