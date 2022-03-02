{
  description = ''Create smooth GPU-accelerated animations that can be previewed live or rendered to videos.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nanim-main.flake = false;
  inputs.src-nanim-main.type = "github";
  inputs.src-nanim-main.owner = "ErikWDev";
  inputs.src-nanim-main.repo = "nanim";
  inputs.src-nanim-main.ref = "refs/heads/main";
  inputs.src-nanim-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."staticglfw".type = "github";
  # inputs."staticglfw".owner = "riinr";
  # inputs."staticglfw".repo = "flake-nimble";
  # inputs."staticglfw".ref = "flake-pinning";
  # inputs."staticglfw".dir = "nimpkgs/s/staticglfw";
  # inputs."staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."glm".type = "github";
  # inputs."glm".owner = "riinr";
  # inputs."glm".repo = "flake-nimble";
  # inputs."glm".ref = "flake-pinning";
  # inputs."glm".dir = "nimpkgs/g/glm";
  # inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nanovg".type = "github";
  # inputs."nanovg".owner = "riinr";
  # inputs."nanovg".repo = "flake-nimble";
  # inputs."nanovg".ref = "flake-pinning";
  # inputs."nanovg".dir = "nimpkgs/n/nanovg";
  # inputs."nanovg".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nanovg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."rainbow".type = "github";
  # inputs."rainbow".owner = "riinr";
  # inputs."rainbow".repo = "flake-nimble";
  # inputs."rainbow".ref = "flake-pinning";
  # inputs."rainbow".dir = "nimpkgs/r/rainbow";
  # inputs."rainbow".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."rainbow".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stb_image".type = "github";
  # inputs."stb_image".owner = "riinr";
  # inputs."stb_image".repo = "flake-nimble";
  # inputs."stb_image".ref = "flake-pinning";
  # inputs."stb_image".dir = "nimpkgs/s/stb_image";
  # inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nanim-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nanim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}