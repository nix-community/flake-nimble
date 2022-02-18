{
  description = ''JSON serialization framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eminim-v2_8_1.flake = false;
  inputs.src-eminim-v2_8_1.type = "github";
  inputs.src-eminim-v2_8_1.owner = "planetis-m";
  inputs.src-eminim-v2_8_1.repo = "eminim";
  inputs.src-eminim-v2_8_1.ref = "refs/tags/v2.8.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-eminim-v2_8_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eminim-v2_8_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eminim-v2_8_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}