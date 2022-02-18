{
  description = ''Interactive Nim Shell'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-inim-0_3_1.flake = false;
  inputs.src-inim-0_3_1.type = "github";
  inputs.src-inim-0_3_1.owner = "inim-repl";
  inputs.src-inim-0_3_1.repo = "INim";
  inputs.src-inim-0_3_1.ref = "refs/tags/0.3.1";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-inim-0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-inim-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}