{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-allographer-v0_22_0.flake = false;
  inputs.src-allographer-v0_22_0.type = "github";
  inputs.src-allographer-v0_22_0.owner = "itsumura-h";
  inputs.src-allographer-v0_22_0.repo = "nim-allographer";
  inputs.src-allographer-v0_22_0.ref = "refs/tags/v0.22.0";
  inputs.src-allographer-v0_22_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-allographer-v0_22_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allographer-v0_22_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-allographer-v0_22_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}