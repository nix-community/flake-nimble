{
  description = ''nimjson generates nim object definitions from json documents.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimjson-v1_0_0.flake = false;
  inputs.src-nimjson-v1_0_0.type = "github";
  inputs.src-nimjson-v1_0_0.owner = "jiro4989";
  inputs.src-nimjson-v1_0_0.repo = "nimjson";
  inputs.src-nimjson-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimjson-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjson-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimjson-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}