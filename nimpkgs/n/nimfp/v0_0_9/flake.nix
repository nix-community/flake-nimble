{
  description = ''Nim functional programming library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimfp-v0_0_9.flake = false;
  inputs.src-nimfp-v0_0_9.type = "github";
  inputs.src-nimfp-v0_0_9.owner = "vegansk";
  inputs.src-nimfp-v0_0_9.repo = "nimfp";
  inputs.src-nimfp-v0_0_9.ref = "refs/tags/v0.0.9";
  inputs.src-nimfp-v0_0_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfp-v0_0_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-v0_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}