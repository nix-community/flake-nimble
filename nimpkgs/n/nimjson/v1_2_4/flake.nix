{
  description = ''nimjson generates nim object definitions from json documents.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimjson-v1_2_4.flake = false;
  inputs.src-nimjson-v1_2_4.type = "github";
  inputs.src-nimjson-v1_2_4.owner = "jiro4989";
  inputs.src-nimjson-v1_2_4.repo = "nimjson";
  inputs.src-nimjson-v1_2_4.ref = "refs/tags/v1.2.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimjson-v1_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjson-v1_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimjson-v1_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}