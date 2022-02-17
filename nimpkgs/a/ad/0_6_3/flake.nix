{
  description = ''A simple RPN calculator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ad-0_6_3.flake = false;
  inputs.src-ad-0_6_3.type = "github";
  inputs.src-ad-0_6_3.owner = "subsetpark";
  inputs.src-ad-0_6_3.repo = "ad";
  inputs.src-ad-0_6_3.ref = "refs/tags/0.6.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ad-0_6_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ad-0_6_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ad-0_6_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}