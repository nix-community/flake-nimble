{
  description = ''High level wrapper for build nginx module w/ nginx-c-function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ngxcmod-0_1_2.flake = false;
  inputs.src-ngxcmod-0_1_2.type = "github";
  inputs.src-ngxcmod-0_1_2.owner = "ba0f3";
  inputs.src-ngxcmod-0_1_2.repo = "ngxcmod.nim";
  inputs.src-ngxcmod-0_1_2.ref = "refs/tags/0.1.2";
  inputs.src-ngxcmod-0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ngxcmod-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ngxcmod-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ngxcmod-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}