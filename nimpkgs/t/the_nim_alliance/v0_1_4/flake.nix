{
  description = ''A Nim wrapper for TheBlueAlliance'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-the_nim_alliance-v0_1_4.flake = false;
  inputs.src-the_nim_alliance-v0_1_4.type = "github";
  inputs.src-the_nim_alliance-v0_1_4.owner = "tervay";
  inputs.src-the_nim_alliance-v0_1_4.repo = "the-nim-alliance";
  inputs.src-the_nim_alliance-v0_1_4.ref = "refs/tags/v0.1.4";
  inputs.src-the_nim_alliance-v0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-the_nim_alliance-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-the_nim_alliance-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-the_nim_alliance-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}