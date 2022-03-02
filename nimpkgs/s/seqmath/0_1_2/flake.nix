{
  description = ''Nim math library for sequences and nested sequences (extends math library)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-seqmath-0_1_2.flake = false;
  inputs.src-seqmath-0_1_2.type = "github";
  inputs.src-seqmath-0_1_2.owner = "jlp765";
  inputs.src-seqmath-0_1_2.repo = "seqmath";
  inputs.src-seqmath-0_1_2.ref = "refs/tags/0.1.2";
  inputs.src-seqmath-0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-seqmath-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-seqmath-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-seqmath-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}