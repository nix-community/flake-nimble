{
  description = ''A Discord Bot & REST Library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-dimscord-v1_2_5.flake = false;
  inputs.src-dimscord-v1_2_5.type = "github";
  inputs.src-dimscord-v1_2_5.owner = "krisppurg";
  inputs.src-dimscord-v1_2_5.repo = "dimscord";
  inputs.src-dimscord-v1_2_5.ref = "refs/tags/v1.2.5";
  inputs.src-dimscord-v1_2_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zippy".type = "github";
  # inputs."zippy".owner = "riinr";
  # inputs."zippy".repo = "flake-nimble";
  # inputs."zippy".ref = "flake-pinning";
  # inputs."zippy".dir = "nimpkgs/z/zippy";
  # inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."ws".type = "github";
  # inputs."ws".owner = "riinr";
  # inputs."ws".repo = "flake-nimble";
  # inputs."ws".ref = "flake-pinning";
  # inputs."ws".dir = "nimpkgs/w/ws";
  # inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."libsodium".type = "github";
  # inputs."libsodium".owner = "riinr";
  # inputs."libsodium".repo = "flake-nimble";
  # inputs."libsodium".ref = "flake-pinning";
  # inputs."libsodium".dir = "nimpkgs/l/libsodium";
  # inputs."libsodium".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."libsodium".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."flatty".type = "github";
  # inputs."flatty".owner = "riinr";
  # inputs."flatty".repo = "flake-nimble";
  # inputs."flatty".ref = "flake-pinning";
  # inputs."flatty".dir = "nimpkgs/f/flatty";
  # inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dimscord-v1_2_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscord-v1_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dimscord-v1_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}