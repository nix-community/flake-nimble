{
  description = ''xam'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-xam-1_3_0.flake = false;
  inputs.src-xam-1_3_0.type = "github";
  inputs.src-xam-1_3_0.owner = "j-a-s-d";
  inputs.src-xam-1_3_0.repo = "xam";
  inputs.src-xam-1_3_0.ref = "refs/tags/1.3.0";
  inputs.src-xam-1_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xam-1_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xam-1_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xam-1_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}