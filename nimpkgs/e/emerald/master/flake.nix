{
  description = ''macro-based HTML templating engine'';
  inputs.src-emerald-master.flake = false;
  inputs.src-emerald-master.type = "github";
  inputs.src-emerald-master.owner = "flyx";
  inputs.src-emerald-master.repo = "emerald";
  inputs.src-emerald-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-emerald-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-emerald-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-emerald-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}