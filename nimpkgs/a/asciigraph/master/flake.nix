{
  description = ''Console ascii line charts in pure nim'';
  inputs.src-asciigraph-master.flake = false;
  inputs.src-asciigraph-master.type = "github";
  inputs.src-asciigraph-master.owner = "Yardanico";
  inputs.src-asciigraph-master.repo = "asciigraph";
  inputs.src-asciigraph-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-asciigraph-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asciigraph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asciigraph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}