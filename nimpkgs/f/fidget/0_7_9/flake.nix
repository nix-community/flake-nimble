{
  description = ''Figma based UI library for nim, with HTML and OpenGL backends.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fidget-0_7_9.flake = false;
  inputs.src-fidget-0_7_9.type = "github";
  inputs.src-fidget-0_7_9.owner = "treeform";
  inputs.src-fidget-0_7_9.repo = "fidget";
  inputs.src-fidget-0_7_9.ref = "refs/tags/0.7.9";
  inputs.src-fidget-0_7_9.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."typography".type = "github";
  # inputs."typography".owner = "riinr";
  # inputs."typography".repo = "flake-nimble";
  # inputs."typography".ref = "flake-pinning";
  # inputs."typography".dir = "nimpkgs/t/typography";
  # inputs."typography".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."typography".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."pixie".type = "github";
  # inputs."pixie".owner = "riinr";
  # inputs."pixie".repo = "flake-nimble";
  # inputs."pixie".ref = "flake-pinning";
  # inputs."pixie".dir = "nimpkgs/p/pixie";
  # inputs."pixie".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."pixie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."print".type = "github";
  # inputs."print".owner = "riinr";
  # inputs."print".repo = "flake-nimble";
  # inputs."print".ref = "flake-pinning";
  # inputs."print".dir = "nimpkgs/p/print";
  # inputs."print".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."print".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."opengl".type = "github";
  # inputs."opengl".owner = "riinr";
  # inputs."opengl".repo = "flake-nimble";
  # inputs."opengl".ref = "flake-pinning";
  # inputs."opengl".dir = "nimpkgs/o/opengl";
  # inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."html5_canvas".type = "github";
  # inputs."html5_canvas".owner = "riinr";
  # inputs."html5_canvas".repo = "flake-nimble";
  # inputs."html5_canvas".ref = "flake-pinning";
  # inputs."html5_canvas".dir = "nimpkgs/h/html5_canvas";
  # inputs."html5_canvas".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."html5_canvas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."staticglfw".type = "github";
  # inputs."staticglfw".owner = "riinr";
  # inputs."staticglfw".repo = "flake-nimble";
  # inputs."staticglfw".ref = "flake-pinning";
  # inputs."staticglfw".dir = "nimpkgs/s/staticglfw";
  # inputs."staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."supersnappy".type = "github";
  # inputs."supersnappy".owner = "riinr";
  # inputs."supersnappy".repo = "flake-nimble";
  # inputs."supersnappy".ref = "flake-pinning";
  # inputs."supersnappy".dir = "nimpkgs/s/supersnappy";
  # inputs."supersnappy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."supersnappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fidget-0_7_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fidget-0_7_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fidget-0_7_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}