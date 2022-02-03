{
  description = ''Figma based UI library for nim, with HTML and OpenGL backends.'';
  inputs.src-fidget-0_3_1.flake = false;
  inputs.src-fidget-0_3_1.type = "github";
  inputs.src-fidget-0_3_1.owner = "treeform";
  inputs.src-fidget-0_3_1.repo = "fidget";
  inputs.src-fidget-0_3_1.ref = "refs/tags/0.3.1";
  
  
  inputs."chroma".url = "path:../../../c/chroma";
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."typography".url = "path:../../../t/typography";
  inputs."typography".type = "github";
  inputs."typography".owner = "riinr";
  inputs."typography".repo = "flake-nimble";
  inputs."typography".ref = "flake-pinning";
  inputs."typography".dir = "nimpkgs/t/typography";

  
  inputs."flippy".url = "path:../../../f/flippy";
  inputs."flippy".type = "github";
  inputs."flippy".owner = "riinr";
  inputs."flippy".repo = "flake-nimble";
  inputs."flippy".ref = "flake-pinning";
  inputs."flippy".dir = "nimpkgs/f/flippy";

  
  inputs."vmath".url = "path:../../../v/vmath";
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."print".url = "path:../../../p/print";
  inputs."print".type = "github";
  inputs."print".owner = "riinr";
  inputs."print".repo = "flake-nimble";
  inputs."print".ref = "flake-pinning";
  inputs."print".dir = "nimpkgs/p/print";

  
  inputs."opengl".url = "path:../../../o/opengl";
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  
  inputs."snappy".url = "path:../../../s/snappy";
  inputs."snappy".type = "github";
  inputs."snappy".owner = "riinr";
  inputs."snappy".repo = "flake-nimble";
  inputs."snappy".ref = "flake-pinning";
  inputs."snappy".dir = "nimpkgs/s/snappy";

  
  inputs."html5_canvas".url = "path:../../../h/html5_canvas";
  inputs."html5_canvas".type = "github";
  inputs."html5_canvas".owner = "riinr";
  inputs."html5_canvas".repo = "flake-nimble";
  inputs."html5_canvas".ref = "flake-pinning";
  inputs."html5_canvas".dir = "nimpkgs/h/html5_canvas";

  
  inputs."staticglfw".url = "path:../../../s/staticglfw";
  inputs."staticglfw".type = "github";
  inputs."staticglfw".owner = "riinr";
  inputs."staticglfw".repo = "flake-nimble";
  inputs."staticglfw".ref = "flake-pinning";
  inputs."staticglfw".dir = "nimpkgs/s/staticglfw";

  outputs = { self, nixpkgs, src-fidget-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fidget-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fidget-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}