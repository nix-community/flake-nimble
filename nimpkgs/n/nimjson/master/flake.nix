{
  description = ''nimjson generates nim object definitions from json documents.'';
  inputs.src-nimjson-master.flake = false;
  inputs.src-nimjson-master.type = "github";
  inputs.src-nimjson-master.owner = "jiro4989";
  inputs.src-nimjson-master.repo = "nimjson";
  inputs.src-nimjson-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimjson-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimjson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}