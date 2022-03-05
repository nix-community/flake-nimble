{
  description = ''nimjson generates nim object definitions from json documents.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimjson-v1_2_7.flake = false;
  inputs.src-nimjson-v1_2_7.type = "github";
  inputs.src-nimjson-v1_2_7.owner = "jiro4989";
  inputs.src-nimjson-v1_2_7.repo = "nimjson";
  inputs.src-nimjson-v1_2_7.ref = "refs/tags/v1.2.7";
  inputs.src-nimjson-v1_2_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimjson-v1_2_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjson-v1_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimjson-v1_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}