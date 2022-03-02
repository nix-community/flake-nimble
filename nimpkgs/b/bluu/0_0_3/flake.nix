{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bluu-0_0_3.flake = false;
  inputs.src-bluu-0_0_3.type = "github";
  inputs.src-bluu-0_0_3.owner = "disruptek";
  inputs.src-bluu-0_0_3.repo = "bluu";
  inputs.src-bluu-0_0_3.ref = "refs/tags/0.0.3";
  inputs.src-bluu-0_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-bluu-0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bluu-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bluu-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}