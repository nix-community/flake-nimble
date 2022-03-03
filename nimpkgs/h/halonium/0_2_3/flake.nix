{
  description = ''A browser automation library written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-halonium-0_2_3.flake = false;
  inputs.src-halonium-0_2_3.type = "github";
  inputs.src-halonium-0_2_3.owner = "halonium";
  inputs.src-halonium-0_2_3.repo = "halonium";
  inputs.src-halonium-0_2_3.ref = "refs/tags/0.2.3";
  inputs.src-halonium-0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."tempfile".type = "github";
  # inputs."tempfile".owner = "riinr";
  # inputs."tempfile".repo = "flake-nimble";
  # inputs."tempfile".ref = "flake-pinning";
  # inputs."tempfile".dir = "nimpkgs/t/tempfile";
  # inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."uuids".type = "github";
  # inputs."uuids".owner = "riinr";
  # inputs."uuids".repo = "flake-nimble";
  # inputs."uuids".ref = "flake-pinning";
  # inputs."uuids".dir = "nimpkgs/u/uuids";
  # inputs."uuids".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."uuids".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."zip".type = "github";
  # inputs."zip".owner = "riinr";
  # inputs."zip".repo = "flake-nimble";
  # inputs."zip".ref = "flake-pinning";
  # inputs."zip".dir = "nimpkgs/z/zip";
  # inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-halonium-0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-halonium-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-halonium-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}