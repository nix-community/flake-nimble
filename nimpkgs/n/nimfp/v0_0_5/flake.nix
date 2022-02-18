{
  description = ''Nim functional programming library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimfp-v0_0_5.flake = false;
  inputs.src-nimfp-v0_0_5.type = "github";
  inputs.src-nimfp-v0_0_5.owner = "vegansk";
  inputs.src-nimfp-v0_0_5.repo = "nimfp";
  inputs.src-nimfp-v0_0_5.ref = "refs/tags/v0.0.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfp-v0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-v0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}