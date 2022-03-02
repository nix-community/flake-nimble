{
  description = ''Interactive Nim Shell'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-inim-0_2_4.flake = false;
  inputs.src-inim-0_2_4.type = "github";
  inputs.src-inim-0_2_4.owner = "inim-repl";
  inputs.src-inim-0_2_4.repo = "INim";
  inputs.src-inim-0_2_4.ref = "refs/tags/0.2.4";
  inputs.src-inim-0_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-inim-0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-inim-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}