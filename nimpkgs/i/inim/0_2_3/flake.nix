{
  description = ''Interactive Nim Shell'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-inim-0_2_3.flake = false;
  inputs.src-inim-0_2_3.type = "github";
  inputs.src-inim-0_2_3.owner = "inim-repl";
  inputs.src-inim-0_2_3.repo = "INim";
  inputs.src-inim-0_2_3.ref = "refs/tags/0.2.3";
  inputs.src-inim-0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-inim-0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-inim-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}