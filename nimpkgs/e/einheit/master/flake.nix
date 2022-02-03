{
  description = ''Pretty looking, full featured, Python-inspired unit test library.'';
  inputs.src-einheit-master.flake = false;
  inputs.src-einheit-master.type = "github";
  inputs.src-einheit-master.owner = "jyapayne";
  inputs.src-einheit-master.repo = "einheit";
  inputs.src-einheit-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-einheit-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-einheit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-einheit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}