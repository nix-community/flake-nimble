{
  description = ''Elegant optional types'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-questionable-0_6_1.flake = false;
  inputs.src-questionable-0_6_1.type = "github";
  inputs.src-questionable-0_6_1.owner = "markspanbroek";
  inputs.src-questionable-0_6_1.repo = "questionable";
  inputs.src-questionable-0_6_1.ref = "refs/tags/0.6.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-questionable-0_6_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-questionable-0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-questionable-0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}