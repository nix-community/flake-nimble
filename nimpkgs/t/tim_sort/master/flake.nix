{
  description = ''A new awesome nimble package'';
  inputs.src-tim_sort-master.flake = false;
  inputs.src-tim_sort-master.type = "github";
  inputs.src-tim_sort-master.owner = "bung87";
  inputs.src-tim_sort-master.repo = "tim_sort";
  inputs.src-tim_sort-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tim_sort-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tim_sort-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tim_sort-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}