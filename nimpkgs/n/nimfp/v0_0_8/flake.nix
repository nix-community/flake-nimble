{
  description = ''Nim functional programming library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimfp-v0_0_8.flake = false;
  inputs.src-nimfp-v0_0_8.type = "github";
  inputs.src-nimfp-v0_0_8.owner = "vegansk";
  inputs.src-nimfp-v0_0_8.repo = "nimfp";
  inputs.src-nimfp-v0_0_8.ref = "refs/tags/v0.0.8";
  inputs.src-nimfp-v0_0_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfp-v0_0_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-v0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}