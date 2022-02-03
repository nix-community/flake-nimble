{
  description = ''nimjson generates nim object definitions from json documents.'';
  inputs.src-nimjson-v1_1_0.flake = false;
  inputs.src-nimjson-v1_1_0.type = "github";
  inputs.src-nimjson-v1_1_0.owner = "jiro4989";
  inputs.src-nimjson-v1_1_0.repo = "nimjson";
  inputs.src-nimjson-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, src-nimjson-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjson-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimjson-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}