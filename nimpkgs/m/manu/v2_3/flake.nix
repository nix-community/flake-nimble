{
  description = ''Matrix library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-manu-v2_3.flake = false;
  inputs.src-manu-v2_3.type = "github";
  inputs.src-manu-v2_3.owner = "planetis-m";
  inputs.src-manu-v2_3.repo = "manu";
  inputs.src-manu-v2_3.ref = "refs/tags/v2.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-manu-v2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-v2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-manu-v2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}