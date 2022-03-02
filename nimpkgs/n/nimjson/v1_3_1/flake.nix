{
  description = ''nimjson generates nim object definitions from json documents.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimjson-v1_3_1.flake = false;
  inputs.src-nimjson-v1_3_1.type = "github";
  inputs.src-nimjson-v1_3_1.owner = "jiro4989";
  inputs.src-nimjson-v1_3_1.repo = "nimjson";
  inputs.src-nimjson-v1_3_1.ref = "refs/tags/v1.3.1";
  inputs.src-nimjson-v1_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimjson-v1_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjson-v1_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimjson-v1_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}