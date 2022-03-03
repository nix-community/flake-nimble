{
  description = ''webrod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-webrod-0_3_0.flake = false;
  inputs.src-webrod-0_3_0.type = "github";
  inputs.src-webrod-0_3_0.owner = "j-a-s-d";
  inputs.src-webrod-0_3_0.repo = "webrod";
  inputs.src-webrod-0_3_0.ref = "refs/tags/0.3.0";
  inputs.src-webrod-0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."xam".type = "github";
  # inputs."xam".owner = "riinr";
  # inputs."xam".repo = "flake-nimble";
  # inputs."xam".ref = "flake-pinning";
  # inputs."xam".dir = "nimpkgs/x/xam";
  # inputs."xam".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."xam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-webrod-0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webrod-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webrod-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}