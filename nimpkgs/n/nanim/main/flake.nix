{
  description = ''Create smooth GPU-accelerated animations that can be previewed live or rendered to videos.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nanim-main.flake = false;
  inputs.src-nanim-main.type = "github";
  inputs.src-nanim-main.owner = "ErikWDev";
  inputs.src-nanim-main.repo = "nanim";
  inputs.src-nanim-main.ref = "refs/heads/main";
  
  
  inputs."staticglfw".type = "github";
  inputs."staticglfw".owner = "riinr";
  inputs."staticglfw".repo = "flake-nimble";
  inputs."staticglfw".ref = "flake-pinning";
  inputs."staticglfw".dir = "nimpkgs/s/staticglfw";

  
  inputs."glm".type = "github";
  inputs."glm".owner = "riinr";
  inputs."glm".repo = "flake-nimble";
  inputs."glm".ref = "flake-pinning";
  inputs."glm".dir = "nimpkgs/g/glm";

  
  inputs."nanovg".type = "github";
  inputs."nanovg".owner = "riinr";
  inputs."nanovg".repo = "flake-nimble";
  inputs."nanovg".ref = "flake-pinning";
  inputs."nanovg".dir = "nimpkgs/n/nanovg";

  
  inputs."rainbow".type = "github";
  inputs."rainbow".owner = "riinr";
  inputs."rainbow".repo = "flake-nimble";
  inputs."rainbow".ref = "flake-pinning";
  inputs."rainbow".dir = "nimpkgs/r/rainbow";

  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nanim-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nanim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}