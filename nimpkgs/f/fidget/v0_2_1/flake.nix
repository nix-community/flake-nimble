{
  description = ''Figma based UI library for nim, with HTML and OpenGL backends.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fidget-v0_2_1.flake = false;
  inputs.src-fidget-v0_2_1.type = "github";
  inputs.src-fidget-v0_2_1.owner = "treeform";
  inputs.src-fidget-v0_2_1.repo = "fidget";
  inputs.src-fidget-v0_2_1.ref = "refs/tags/v0.2.1";
  inputs.src-fidget-v0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."chroma".type = "github";
  # inputs."chroma".owner = "riinr";
  # inputs."chroma".repo = "flake-nimble";
  # inputs."chroma".ref = "flake-pinning";
  # inputs."chroma".dir = "nimpkgs/c/chroma";
  # inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."typography".type = "github";
  # inputs."typography".owner = "riinr";
  # inputs."typography".repo = "flake-nimble";
  # inputs."typography".ref = "flake-pinning";
  # inputs."typography".dir = "nimpkgs/t/typography";
  # inputs."typography".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."typography".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."flippy".type = "github";
  # inputs."flippy".owner = "riinr";
  # inputs."flippy".repo = "flake-nimble";
  # inputs."flippy".ref = "flake-pinning";
  # inputs."flippy".dir = "nimpkgs/f/flippy";
  # inputs."flippy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."flippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."vmath".type = "github";
  # inputs."vmath".owner = "riinr";
  # inputs."vmath".repo = "flake-nimble";
  # inputs."vmath".ref = "flake-pinning";
  # inputs."vmath".dir = "nimpkgs/v/vmath";
  # inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
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

  
  # inputs."snappy".type = "github";
  # inputs."snappy".owner = "riinr";
  # inputs."snappy".repo = "flake-nimble";
  # inputs."snappy".ref = "flake-pinning";
  # inputs."snappy".dir = "nimpkgs/s/snappy";
  # inputs."snappy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."snappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."html5_canvas".type = "github";
  # inputs."html5_canvas".owner = "riinr";
  # inputs."html5_canvas".repo = "flake-nimble";
  # inputs."html5_canvas".ref = "flake-pinning";
  # inputs."html5_canvas".dir = "nimpkgs/h/html5_canvas";
  # inputs."html5_canvas".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."html5_canvas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/treeform/staticglfw".type = "github";
  # inputs."https://github.com/treeform/staticglfw".owner = "riinr";
  # inputs."https://github.com/treeform/staticglfw".repo = "flake-nimble";
  # inputs."https://github.com/treeform/staticglfw".ref = "flake-pinning";
  # inputs."https://github.com/treeform/staticglfw".dir = "nimpkgs/h/https://github.com/treeform/staticglfw";
  # inputs."https://github.com/treeform/staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/treeform/staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fidget-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fidget-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fidget-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}