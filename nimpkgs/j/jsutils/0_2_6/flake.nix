{
  description = ''Utils to work with javascript'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jsutils-0_2_6.flake = false;
  inputs.src-jsutils-0_2_6.type = "github";
  inputs.src-jsutils-0_2_6.owner = "kidandcat";
  inputs.src-jsutils-0_2_6.repo = "jsutils";
  inputs.src-jsutils-0_2_6.ref = "refs/tags/0.2.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jsutils-0_2_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsutils-0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jsutils-0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}