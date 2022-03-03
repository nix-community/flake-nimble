{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bluu-0_0_4.flake = false;
  inputs.src-bluu-0_0_4.type = "github";
  inputs.src-bluu-0_0_4.owner = "disruptek";
  inputs.src-bluu-0_0_4.repo = "bluu";
  inputs.src-bluu-0_0_4.ref = "refs/tags/0.0.4";
  inputs.src-bluu-0_0_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."openapi".type = "github";
  # inputs."openapi".owner = "riinr";
  # inputs."openapi".repo = "flake-nimble";
  # inputs."openapi".ref = "flake-pinning";
  # inputs."openapi".dir = "nimpkgs/o/openapi";
  # inputs."openapi".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."openapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/disruptek/rest.git".type = "github";
  # inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  # inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";
  # inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bluu-0_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bluu-0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bluu-0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}