{
  description = ''Mustache in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mustache-v0_3_2.flake = false;
  inputs.src-mustache-v0_3_2.type = "github";
  inputs.src-mustache-v0_3_2.owner = "soasme";
  inputs.src-mustache-v0_3_2.repo = "nim-mustache";
  inputs.src-mustache-v0_3_2.ref = "refs/tags/v0.3.2";
  inputs.src-mustache-v0_3_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mustache-v0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mustache-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mustache-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}