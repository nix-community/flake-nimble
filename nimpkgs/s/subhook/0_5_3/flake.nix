{
  description = ''subhook wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-subhook-0_5_3.flake = false;
  inputs.src-subhook-0_5_3.type = "github";
  inputs.src-subhook-0_5_3.owner = "ba0f3";
  inputs.src-subhook-0_5_3.repo = "subhook.nim";
  inputs.src-subhook-0_5_3.ref = "refs/tags/0.5.3";
  inputs.src-subhook-0_5_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-subhook-0_5_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-subhook-0_5_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-subhook-0_5_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}