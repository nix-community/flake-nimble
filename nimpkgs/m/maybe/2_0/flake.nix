{
  description = ''basic monadic maybe type for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-maybe-2_0.flake = false;
  inputs.src-maybe-2_0.type = "github";
  inputs.src-maybe-2_0.owner = "superfunc";
  inputs.src-maybe-2_0.repo = "maybe";
  inputs.src-maybe-2_0.ref = "refs/tags/2.0";
  inputs.src-maybe-2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-maybe-2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-maybe-2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-maybe-2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}