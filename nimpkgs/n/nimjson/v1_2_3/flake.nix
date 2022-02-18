{
  description = ''nimjson generates nim object definitions from json documents.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimjson-v1_2_3.flake = false;
  inputs.src-nimjson-v1_2_3.type = "github";
  inputs.src-nimjson-v1_2_3.owner = "jiro4989";
  inputs.src-nimjson-v1_2_3.repo = "nimjson";
  inputs.src-nimjson-v1_2_3.ref = "refs/tags/v1.2.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimjson-v1_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjson-v1_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimjson-v1_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}