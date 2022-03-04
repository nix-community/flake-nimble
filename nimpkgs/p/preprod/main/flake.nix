{
  description = ''preprod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-preprod-main.flake = false;
  inputs.src-preprod-main.type = "github";
  inputs.src-preprod-main.owner = "j-a-s-d";
  inputs.src-preprod-main.repo = "preprod";
  inputs.src-preprod-main.ref = "refs/heads/main";
  inputs.src-preprod-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."xam".type = "github";
  inputs."xam".owner = "riinr";
  inputs."xam".repo = "flake-nimble";
  inputs."xam".ref = "flake-pinning";
  inputs."xam".dir = "nimpkgs/x/xam";
  inputs."xam".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-preprod-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-preprod-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-preprod-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}