{
  description = ''Fully type safe, compile time only units library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-unchained-v0_1_8.flake = false;
  inputs.src-unchained-v0_1_8.type = "github";
  inputs.src-unchained-v0_1_8.owner = "SciNim";
  inputs.src-unchained-v0_1_8.repo = "unchained";
  inputs.src-unchained-v0_1_8.ref = "refs/tags/v0.1.8";
  inputs.src-unchained-v0_1_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unchained-v0_1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unchained-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unchained-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}