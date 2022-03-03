{
  description = ''Image manipulation library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-imageman-master.flake = false;
  inputs.src-imageman-master.type = "github";
  inputs.src-imageman-master.owner = "SolitudeSF";
  inputs.src-imageman-master.repo = "imageman";
  inputs.src-imageman-master.ref = "refs/heads/master";
  inputs.src-imageman-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."stb_image".type = "github";
  # inputs."stb_image".owner = "riinr";
  # inputs."stb_image".repo = "flake-nimble";
  # inputs."stb_image".ref = "flake-pinning";
  # inputs."stb_image".dir = "nimpkgs/s/stb_image";
  # inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-imageman-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imageman-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-imageman-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}