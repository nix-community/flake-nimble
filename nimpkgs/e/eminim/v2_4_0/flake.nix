{
  description = ''JSON serialization framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eminim-v2_4_0.flake = false;
  inputs.src-eminim-v2_4_0.type = "github";
  inputs.src-eminim-v2_4_0.owner = "planetis-m";
  inputs.src-eminim-v2_4_0.repo = "eminim";
  inputs.src-eminim-v2_4_0.ref = "refs/tags/v2.4.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-eminim-v2_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eminim-v2_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eminim-v2_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}