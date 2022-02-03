{
  description = ''Fast JSON parser'';
  inputs.src-jq-master.flake = false;
  inputs.src-jq-master.type = "github";
  inputs.src-jq-master.owner = "alialrahahleh";
  inputs.src-jq-master.repo = "fjq";
  inputs.src-jq-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jq-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}