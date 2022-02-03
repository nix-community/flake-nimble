{
  description = ''Human friendly DateTime string representations, seconds to millenniums.'';
  inputs.src-datetime2human-master.flake = false;
  inputs.src-datetime2human-master.type = "github";
  inputs.src-datetime2human-master.owner = "juancarlospaco";
  inputs.src-datetime2human-master.repo = "nim-datetime2human";
  inputs.src-datetime2human-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-datetime2human-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-datetime2human-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-datetime2human-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}