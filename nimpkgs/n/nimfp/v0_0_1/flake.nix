{
  description = ''Nim functional programming library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimfp-v0_0_1.flake = false;
  inputs.src-nimfp-v0_0_1.type = "github";
  inputs.src-nimfp-v0_0_1.owner = "vegansk";
  inputs.src-nimfp-v0_0_1.repo = "nimfp";
  inputs.src-nimfp-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfp-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}