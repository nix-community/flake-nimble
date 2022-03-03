{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bluu-0_0_5.flake = false;
  inputs.src-bluu-0_0_5.type = "github";
  inputs.src-bluu-0_0_5.owner = "disruptek";
  inputs.src-bluu-0_0_5.repo = "bluu";
  inputs.src-bluu-0_0_5.ref = "refs/tags/0.0.5";
  inputs.src-bluu-0_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/disruptek/rest.git".type = "github";
  # inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  # inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";
  # inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bluu-0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bluu-0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bluu-0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}