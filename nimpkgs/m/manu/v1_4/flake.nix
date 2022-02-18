{
  description = ''Matrix library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-manu-v1_4.flake = false;
  inputs.src-manu-v1_4.type = "github";
  inputs.src-manu-v1_4.owner = "planetis-m";
  inputs.src-manu-v1_4.repo = "manu";
  inputs.src-manu-v1_4.ref = "refs/tags/v1.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-manu-v1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-v1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-manu-v1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}