{
  description = ''nimjson generates nim object definitions from json documents.'';
  inputs.src-nimjson-v1_2_5.flake = false;
  inputs.src-nimjson-v1_2_5.type = "github";
  inputs.src-nimjson-v1_2_5.owner = "jiro4989";
  inputs.src-nimjson-v1_2_5.repo = "nimjson";
  inputs.src-nimjson-v1_2_5.ref = "refs/tags/v1.2.5";
  
  outputs = { self, nixpkgs, src-nimjson-v1_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjson-v1_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimjson-v1_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}