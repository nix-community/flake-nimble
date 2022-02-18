{
  description = ''Elegant optional types'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-questionable-0_6_2.flake = false;
  inputs.src-questionable-0_6_2.type = "github";
  inputs.src-questionable-0_6_2.owner = "markspanbroek";
  inputs.src-questionable-0_6_2.repo = "questionable";
  inputs.src-questionable-0_6_2.ref = "refs/tags/0.6.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-questionable-0_6_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-questionable-0_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-questionable-0_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}