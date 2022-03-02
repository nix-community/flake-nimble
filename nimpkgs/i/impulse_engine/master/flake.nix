{
  description = ''Nim port of a simple 2D physics engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-impulse_engine-master.flake = false;
  inputs.src-impulse_engine-master.type = "github";
  inputs.src-impulse_engine-master.owner = "matkuki";
  inputs.src-impulse_engine-master.repo = "Nim-Impulse-Engine";
  inputs.src-impulse_engine-master.ref = "refs/heads/master";
  inputs.src-impulse_engine-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."opengl".type = "github";
  # inputs."opengl".owner = "riinr";
  # inputs."opengl".repo = "flake-nimble";
  # inputs."opengl".ref = "flake-pinning";
  # inputs."opengl".dir = "nimpkgs/o/opengl";
  # inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."x11".type = "github";
  # inputs."x11".owner = "riinr";
  # inputs."x11".repo = "flake-nimble";
  # inputs."x11".ref = "flake-pinning";
  # inputs."x11".dir = "nimpkgs/x/x11";
  # inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nim-glfw".type = "github";
  # inputs."nim-glfw".owner = "riinr";
  # inputs."nim-glfw".repo = "flake-nimble";
  # inputs."nim-glfw".ref = "flake-pinning";
  # inputs."nim-glfw".dir = "nimpkgs/n/nim-glfw";
  # inputs."nim-glfw".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nim-glfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-impulse_engine-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-impulse_engine-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-impulse_engine-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}