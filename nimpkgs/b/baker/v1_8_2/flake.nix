{
  description = ''Static website generation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-baker-v1_8_2.flake = false;
  inputs.src-baker-v1_8_2.type = "github";
  inputs.src-baker-v1_8_2.owner = "jasonrbriggs";
  inputs.src-baker-v1_8_2.repo = "baker";
  inputs.src-baker-v1_8_2.ref = "refs/tags/v1.8.2";
  inputs.src-baker-v1_8_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-baker-v1_8_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-baker-v1_8_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-baker-v1_8_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}