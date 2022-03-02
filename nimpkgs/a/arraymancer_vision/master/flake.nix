{
  description = ''Image transformation and visualization utilities for arraymancer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-arraymancer_vision-master.flake = false;
  inputs.src-arraymancer_vision-master.type = "github";
  inputs.src-arraymancer_vision-master.owner = "edubart";
  inputs.src-arraymancer_vision-master.repo = "arraymancer-vision";
  inputs.src-arraymancer_vision-master.ref = "refs/heads/master";
  inputs.src-arraymancer_vision-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."arraymancer".type = "github";
  # inputs."arraymancer".owner = "riinr";
  # inputs."arraymancer".repo = "flake-nimble";
  # inputs."arraymancer".ref = "flake-pinning";
  # inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  # inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stb_image".type = "github";
  # inputs."stb_image".owner = "riinr";
  # inputs."stb_image".repo = "flake-nimble";
  # inputs."stb_image".ref = "flake-pinning";
  # inputs."stb_image".dir = "nimpkgs/s/stb_image";
  # inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-arraymancer_vision-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arraymancer_vision-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arraymancer_vision-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}