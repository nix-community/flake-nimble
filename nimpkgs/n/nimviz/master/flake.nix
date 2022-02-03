{
  description = ''A wrapper for the graphviz c api.'';
  inputs.src-nimviz-master.flake = false;
  inputs.src-nimviz-master.type = "github";
  inputs.src-nimviz-master.owner = "Rekihyt";
  inputs.src-nimviz-master.repo = "nimviz";
  inputs.src-nimviz-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimviz-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimviz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimviz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}