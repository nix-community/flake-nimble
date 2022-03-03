{
  description = ''Argument parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nap-1_2_2.flake = false;
  inputs.src-nap-1_2_2.type = "github";
  inputs.src-nap-1_2_2.owner = "madprops";
  inputs.src-nap-1_2_2.repo = "nap";
  inputs.src-nap-1_2_2.ref = "refs/tags/1.2.2";
  inputs.src-nap-1_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nap-1_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nap-1_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nap-1_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}