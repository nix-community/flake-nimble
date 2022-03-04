{
  description = ''Image manipulation library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-imageman-v0_7_2.flake = false;
  inputs.src-imageman-v0_7_2.type = "github";
  inputs.src-imageman-v0_7_2.owner = "SolitudeSF";
  inputs.src-imageman-v0_7_2.repo = "imageman";
  inputs.src-imageman-v0_7_2.ref = "refs/tags/v0.7.2";
  inputs.src-imageman-v0_7_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-imageman-v0_7_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imageman-v0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-imageman-v0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}