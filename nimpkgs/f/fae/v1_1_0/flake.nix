{
  description = ''Find and Edit Utility'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fae-v1_1_0.flake = false;
  inputs.src-fae-v1_1_0.type = "github";
  inputs.src-fae-v1_1_0.owner = "h3rald";
  inputs.src-fae-v1_1_0.repo = "fae";
  inputs.src-fae-v1_1_0.ref = "refs/tags/v1.1.0";
  inputs.src-fae-v1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fae-v1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fae-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fae-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}